#!/usr/bin/env bash
# One-command live update for Habbito (habbitobd.com).
# Inspired by Connect Tutors BD's automated deployment engine.
#
# Usage via SSH Terminal:
#   bash update.sh               (standard production update: pulls code, backs up DB, migrates, caches, tests health)
#   bash update.sh --rollback    (reverts code to the commit before the last update)
#   bash update.sh --skip-backup (fast update skipping database backup)
#
# Safety features:
# - Halts if server has uncommitted local modifications.
# - Automatically detects new database migrations.
# - Takes an instant compressed backup of the database before migrations run.
# - Puts site into temporary maintenance mode to prevent visitor errors.
# - Re-builds route, config, and view caches for peak LiteSpeed/PHP performance.
# - Verifies live site HTTP response before completing.
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$APP_DIR"

MODE="normal"
case "${1:-}" in
  "") ;;
  --rollback) MODE="rollback" ;;
  --skip-backup) MODE="skip-backup" ;;
  *) echo "Unknown option: $1 (allowed: --rollback or --skip-backup)" >&2; exit 1 ;;
esac

say() { printf '\n==> %s\n' "$*"; }
die() { printf '\n[STOPPED] %s\n' "$*" >&2; exit 1; }

# Determine PHP executable (handles cPanel / Hostinger ea-php82 or standard php)
if command -v /usr/local/bin/php8.2 >/dev/null 2>&1; then
  PHP="/usr/local/bin/php8.2"
elif command -v /opt/alt/php82/usr/bin/php >/dev/null 2>&1; then
  PHP="/opt/alt/php82/usr/bin/php"
elif command -v php >/dev/null 2>&1; then
  PHP="php"
else
  die "PHP executable not found on this server."
fi

# Determine Composer executable
if command -v composer >/dev/null 2>&1; then
  COMPOSER="composer"
elif [ -f "$HOME/composer.phar" ]; then
  COMPOSER="$PHP $HOME/composer.phar"
else
  COMPOSER=""
fi

[ -f artisan ] || die "'artisan' not found. Make sure you are running update.sh from the Habbito root folder."
[ -f .env ] || die ".env is missing in $APP_DIR."

# Read APP_URL from .env or default to habbitobd.com
SITE_URL="$(grep -E "^APP_URL=" .env 2>/dev/null | tail -n 1 | cut -d '=' -f2- | tr -d '\r"' || echo "https://habbitobd.com")"

restart_and_check() {
  say "Verifying live site health"
  sleep 2
  for TRY in 1 2 3 4 5; do
    HTTP_CODE="$(curl -s -o /dev/null -w "%{http_code}" -m 15 "$SITE_URL" || true)"
    case "$HTTP_CODE" in
      200|301|302)
        printf '\n%s answered with HTTP %s (Healthy!)\n' "$SITE_URL" "$HTTP_CODE"
        return 0
        ;;
    esac
    sleep 3
  done
  printf '\nWarning: %s returned HTTP %s or did not respond.\n' "$SITE_URL" "${HTTP_CODE:-None}"
  return 1
}

# ---------------------------------------------------------------------------
# ROLLBACK MODE
# ---------------------------------------------------------------------------
if [ "$MODE" = "rollback" ]; then
  [ -f .last_deployed_commit ] || die "No previous deployment record found (.last_deployed_commit is missing). Nothing was changed."
  BACK_SHA="$(tr -d '[:space:]' < .last_deployed_commit)"
  [ -n "$BACK_SHA" ] || die ".last_deployed_commit is empty. Nothing was changed."

  if [ -n "$(git status --porcelain --untracked-files=no)" ]; then
    die "Code files on the server were modified by hand. Run 'git status' to inspect. Nothing was changed."
  fi

  NOW_SHA="$(git rev-parse HEAD)"
  say "Rolling back code to previous commit"
  echo "Current commit : $(git --no-pager log -1 --format='%h %s' "$NOW_SHA")"
  echo "Reverting to   : $(git --no-pager log -1 --format='%h %s' "$BACK_SHA")"

  git reset --hard "$BACK_SHA"
  echo "$NOW_SHA" > .last_deployed_commit # Swap so running rollback again undoes it

  say "Clearing and optimizing caches"
  $PHP artisan optimize:clear || true
  $PHP artisan config:cache || true
  $PHP artisan route:cache || true
  $PHP artisan view:cache || true

  say "Database status check"
  CHANGES="$(git diff --name-only "$BACK_SHA" "$NOW_SHA" -- 'database/migrations/*.php' 'platform/*/database/migrations/*.php' 'platform/*/*/database/migrations/*.php' 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$CHANGES" -gt 0 ]; then
    echo "NOTICE: The update you rolled back applied $CHANGES database migration(s)."
    echo "Those columns/tables still exist in the database."
    echo "To restore the database to its pre-update state, run:"
    echo "  bash scripts/restore-database.sh"
  else
    echo "The database was not affected by this update."
  fi

  restart_and_check || true
  printf '\nRollback finished successfully.\n'
  exit 0
fi

# ---------------------------------------------------------------------------
# NORMAL UPDATE MODE
# ---------------------------------------------------------------------------
if [ -n "$(git status --porcelain --untracked-files=no)" ]; then
  die "Code files on the server were modified by hand. Run 'git status' to inspect. Nothing was changed."
fi

say "Checking for new code on GitHub"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
git fetch --quiet origin
LOCAL="$(git rev-parse HEAD)"
REMOTE="$(git rev-parse "origin/$BRANCH")"

if [ "$LOCAL" = "$REMOTE" ]; then
  echo "Nothing new. Habbito is already up to date ($LOCAL)."
  exit 0
fi

say "New commits detected:"
git --no-pager log --oneline "$LOCAL..$REMOTE"

# Check for database migrations
NEW_MIGRATIONS="$(git diff --name-only "$LOCAL" "$REMOTE" -- 'database/migrations/*.php' 'platform/*/database/migrations/*.php' 'platform/*/*/database/migrations/*.php' 2>/dev/null | wc -l | tr -d ' ')"
if [ "$NEW_MIGRATIONS" -gt 0 ]; then
  printf '\nThis update includes %s new database migration(s).\n' "$NEW_MIGRATIONS"
  if [ "$MODE" != "skip-backup" ]; then
    say "Taking an automated database backup first"
    if [ -f scripts/backup-database.sh ]; then
      bash scripts/backup-database.sh "before-${REMOTE:0:7}"
    else
      echo "Warning: scripts/backup-database.sh not found. Proceeding without automated backup."
    fi
  fi
fi

# Put site into temporary maintenance mode
say "Enabling maintenance mode"
$PHP artisan down --render="errors::503" 2>/dev/null || true

# Record current commit for rollback
echo "$LOCAL" > .last_deployed_commit

say "Merging new code"
git merge --ff-only --quiet "origin/$BRANCH"

# Check if composer dependencies changed
if ! git diff --quiet "$LOCAL" "$REMOTE" -- composer.lock; then
  say "composer.lock changed. Updating composer dependencies"
  if [ -n "$COMPOSER" ]; then
    $COMPOSER install --no-dev --prefer-dist --optimize-autoloader --no-interaction
  else
    echo "Notice: composer not found in PATH; skipping composer install."
  fi
fi

# Run database migrations if any
if [ "$NEW_MIGRATIONS" -gt 0 ]; then
  say "Applying database migrations"
  $PHP artisan migrate --force
fi

# Clear and rebuild caches for optimal performance
say "Clearing and compiling application caches"
$PHP artisan optimize:clear
$PHP artisan config:cache
$PHP artisan route:cache
$PHP artisan view:cache

# Ensure permissions on writable folders
chmod -R 775 storage bootstrap/cache 2>/dev/null || true

# Bring site back online
say "Bringing site back online"
$PHP artisan up

if restart_and_check; then
  printf '\n=======================================================\n'
  printf ' Habbito (%s) successfully updated to %s!\n' "$SITE_URL" "${REMOTE:0:7}"
  printf '=======================================================\n'
  exit 0
fi

echo "Warning: The update finished, but the site check did not respond as expected."
echo "If needed, you can roll back to the previous version with:"
echo "  bash update.sh --rollback"
exit 1
