#!/usr/bin/env bash
# Restores the Habbito database from one of the saved copies.
#
#   bash scripts/restore-database.sh      (lists the saved copies, asks which one)
#   bash scripts/restore-database.sh 2    (restores copy number 2 from that list)
#
# The copies are the ones scripts/backup-database.sh saves in ~/db-backups.
# The database is completely replaced by what the copy held.
# A safety copy of the database as it is right now is saved first, so this can
# itself be undone. You must type RESTORE to confirm.
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$APP_DIR"

DIR="${BACKUP_DIR:-$HOME/db-backups}"

say() { printf '\n==> %s\n' "$*"; }
die() { printf '\n[STOPPED] %s\n' "$*" >&2; exit 1; }

command -v mysql >/dev/null 2>&1 || die "mysql is not available on this server."
command -v gzip >/dev/null 2>&1 || die "gzip is not available on this server."
[ -f .env ] || die ".env is missing in $APP_DIR."

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

[ -n "$DB_DATABASE" ] || die "DB_DATABASE is not set in .env."
[ -n "$DB_USERNAME" ] || die "DB_USERNAME is not set in .env."

ALL=("$DIR"/habbito-*.sql.gz)
[ -e "${ALL[0]}" ] || die "There are no saved copies in $DIR. Nothing was changed."
COUNT="${#ALL[@]}"

# Helper to format file timestamps to Dhaka Time (UTC+6)
describe() {
  local base rest day clock label epoch size
  base="${1##*/}"
  rest="${base#habbito-}"
  rest="${rest%.sql.gz}"
  size="$(du -h "$1" 2>/dev/null | cut -f1 || echo "")"
  if [[ "$rest" =~ ^([0-9]{8})-([0-9]{6})-(.*)$ ]]; then
    day="${BASH_REMATCH[1]}"
    clock="${BASH_REMATCH[2]}"
    label="${BASH_REMATCH[3]}"
    if epoch="$(date -u -d "${day:0:4}-${day:4:2}-${day:6:2} ${clock:0:2}:${clock:2:2}:${clock:4:2}" +%s 2>/dev/null)"; then
      printf '%s   %-24s %s' "$(date -u -d "@$((epoch + 21600))" '+%d %b %Y, %I:%M %p' 2>/dev/null || echo "$day $clock")" "$label" "$size"
      return
    fi
  fi
  printf '%s   %s' "$rest" "$size"
}

printf '\nSaved Habbito database copies in %s (newest first, times are Dhaka time):\n\n' "$DIR"
NUMBER=1
for ((INDEX = COUNT - 1; INDEX >= 0; INDEX--)); do
  printf '  %2d)  %s\n' "$NUMBER" "$(describe "${ALL[$INDEX]}")"
  NUMBER=$((NUMBER + 1))
done

CHOICE="${1:-}"
if [ -z "$CHOICE" ]; then
  printf '\nType the number of the copy to restore (or press Enter to cancel): '
  read -r CHOICE || CHOICE=""
fi
if [ -z "$CHOICE" ]; then echo "Cancelled. Nothing was changed."; exit 0; fi
case "$CHOICE" in *[!0-9]*) die "'$CHOICE' is not a valid number. Nothing was changed." ;; esac
CHOICE=$((10#$CHOICE))
if [ "$CHOICE" -lt 1 ] || [ "$CHOICE" -gt "$COUNT" ]; then die "There is no copy number $CHOICE. Nothing was changed."; fi
FILE="${ALL[$((COUNT - CHOICE))]}"

gzip -t "$FILE" 2>/dev/null || die "That copy is damaged. Pick another one. Nothing was changed."
case "$(gzip -dc "$FILE" | tail -n 1)" in
  *"Dump completed"*) ;;
  *) die "That copy is incomplete. Pick another one. Nothing was changed." ;;
esac

printf '\nYou are about to REPLACE the whole database with copy %s: %s\n' "$CHOICE" "$(describe "$FILE")"
printf 'WARNING: Any new orders, customers or products created after this backup will be overwritten!\n'
printf 'A safety backup of the current database will be saved first.\n'
printf '\nTo proceed, type RESTORE and press Enter: '
read -r ANSWER || ANSWER=""
[ "$ANSWER" = "RESTORE" ] || die "Not confirmed. Nothing was changed."

say "Saving a safety copy of the database as it is right now"
BACKUP_KEEP=$((COUNT + 1)) bash scripts/backup-database.sh "before-restore" || die "Could not create safety backup."

say "Restoring database from: $FILE"
OPTIONS="$(mktemp)"
ERRORS="$(mktemp)"
trap 'rm -f "$OPTIONS" "$ERRORS"' EXIT

cat <<EOF > "$OPTIONS"
[client]
host=${DB_HOST:-127.0.0.1}
port=${DB_PORT:-3306}
user=${DB_USERNAME}
password=${DB_PASSWORD}
EOF
chmod 600 "$OPTIONS"

if ! gzip -dc "$FILE" | mysql --defaults-extra-file="$OPTIONS" --default-character-set=utf8mb4 "$DB_DATABASE" 2>"$ERRORS"; then
  die "mysql restore failed: $(tail -n 3 "$ERRORS" | tr '\n' ' ')"
fi

say "Clearing application cache"
if command -v php >/dev/null 2>&1; then
  php artisan optimize:clear || true
fi

say "Database restore completed successfully!"
