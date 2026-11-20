#!/usr/bin/env bash
# Saves a compressed copy of the Habbito database and keeps only the newest few.
#
#   bash scripts/backup-database.sh [label]
#
# The copy goes to ~/db-backups/habbito-<UTC date and time>-<label>.sql.gz,
# outside the website folders, readable only by this account. update.sh runs this
# before an update that changes the database. It prints the file's path when it
# worked; if anything fails it says why, leaves no half-written file and exits 1.
#
# Settings (all optional): BACKUP_DIR (folder), BACKUP_KEEP (how many to keep, default 10).
# A copy kept on the same server is for quick rollbacks of a bad update.
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$APP_DIR"

KEEP="${BACKUP_KEEP:-10}"
DIR="${BACKUP_DIR:-$HOME/db-backups}"
LABEL="${1:-manual}"
LABEL="${LABEL//[^A-Za-z0-9._-]/}"
[ -n "$LABEL" ] || LABEL="manual"

fail() { printf 'Backup failed: %s\n' "$*" >&2; exit 1; }

case "$KEEP" in ''|*[!0-9]*) fail "BACKUP_KEEP must be a number." ;; esac
[ "$KEEP" -ge 1 ] || fail "BACKUP_KEEP must be at least 1."
command -v mysqldump >/dev/null 2>&1 || fail "mysqldump is not available on this server."
command -v gzip >/dev/null 2>&1 || fail "gzip is not available on this server."

[ -f .env ] || fail ".env file is missing in $APP_DIR."

# Read database credentials from Laravel's .env file
get_env() {
  local key="$1"
  local val
  val="$(grep -E "^${key}=" .env 2>/dev/null | tail -n 1 | cut -d '=' -f2- | tr -d '\r' | sed -e 's/^"//' -e 's/"$//' -e "s/^'//" -e "s/'$//" || true)"
  echo "$val"
}

DB_HOST="$(get_env "DB_HOST")"
DB_PORT="$(get_env "DB_PORT")"
DB_DATABASE="$(get_env "DB_DATABASE")"
DB_USERNAME="$(get_env "DB_USERNAME")"
DB_PASSWORD="$(get_env "DB_PASSWORD")"

[ -n "$DB_DATABASE" ] || fail "DB_DATABASE is not set in .env."
[ -n "$DB_USERNAME" ] || fail "DB_USERNAME is not set in .env."

mkdir -p "$DIR" || fail "cannot create $DIR."
chmod 700 "$DIR" 2>/dev/null || true

OPTIONS="$(mktemp)"
ERRORS="$(mktemp)"
PARTIAL="$(mktemp "$DIR/.partial-XXXXXX")"
trap 'rm -f "$OPTIONS" "$ERRORS" "$PARTIAL"' EXIT

# Create a secure client config file so passwords are never exposed in process listings
cat <<EOF > "$OPTIONS"
[client]
host=${DB_HOST:-127.0.0.1}
port=${DB_PORT:-3306}
user=${DB_USERNAME}
password=${DB_PASSWORD}
EOF
chmod 600 "$OPTIONS"

if ! mysqldump --defaults-extra-file="$OPTIONS" --single-transaction --quick --skip-lock-tables \
     --default-character-set=utf8mb4 "$DB_DATABASE" 2>"$ERRORS" | gzip -c > "$PARTIAL"; then
  fail "mysqldump stopped: $(tail -n 3 "$ERRORS" | tr '\n' ' ')"
fi

# Verify the backup integrity
gzip -t "$PARTIAL" 2>/dev/null || fail "the copy is damaged (gzip integrity test failed)."
LAST_LINE="$(gzip -dc "$PARTIAL" | tail -n 1)"
case "$LAST_LINE" in
  *"Dump completed"*) ;;
  *) fail "the copy is incomplete (missing 'Dump completed' marker)." ;;
esac

STAMP="$(date -u +%Y%m%d-%H%M%S)"
FILE="$DIR/habbito-$STAMP-$LABEL.sql.gz"
chmod 600 "$PARTIAL"
mv "$PARTIAL" "$FILE"

# Rotate backups: keep the newest $KEEP copies, delete older ones
ls -1 "$DIR"/habbito-*.sql.gz 2>/dev/null | sort -r | tail -n +"$((KEEP + 1))" | while IFS= read -r OLD; do
  rm -f -- "$OLD"
done

printf 'Database copy saved: %s (%s)\n' "$FILE" "$(du -h "$FILE" 2>/dev/null | cut -f1 || echo "saved")"
