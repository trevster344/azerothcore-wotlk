#!/usr/bin/env bash
set -euo pipefail

if [ -f /etc/backup.env ]; then
  set -a
  # shellcheck disable=SC1091
  source /etc/backup.env
  set +a
fi

DB_HOST="${DB_HOST:-ac-database}"
DB_PORT="${DB_PORT:-3306}"
DB_USER="${DB_USER:-root}"
DB_PASS="${DOCKER_DB_ROOT_PASSWORD:?DOCKER_DB_ROOT_PASSWORD not set}"
R2_BUCKET="${R2_BUCKET:?R2_BUCKET not set}"
R2_ACCOUNT_ID="${R2_ACCOUNT_ID:?R2_ACCOUNT_ID not set}"
R2_ACCESS_KEY_ID="${R2_ACCESS_KEY_ID:?R2_ACCESS_KEY_ID not set}"
R2_SECRET_ACCESS_KEY="${R2_SECRET_ACCESS_KEY:?R2_SECRET_ACCESS_KEY not set}"

export RCLONE_CONFIG_R2_TYPE=s3
export RCLONE_CONFIG_R2_PROVIDER=Cloudflare
export RCLONE_CONFIG_R2_ACCESS_KEY_ID="$R2_ACCESS_KEY_ID"
export RCLONE_CONFIG_R2_SECRET_ACCESS_KEY="$R2_SECRET_ACCESS_KEY"
export RCLONE_CONFIG_R2_ENDPOINT="https://${R2_ACCOUNT_ID}.r2.cloudflarestorage.com"
export RCLONE_CONFIG_R2_REGION=auto
export RCLONE_CONFIG_R2_NO_CHECK_BUCKET=true

DATABASES=(acore_auth acore_world acore_characters acore_playerbots)
DATE="$(date +%Y-%m-%d)"

log() { echo "[$(date -u +%FT%TZ)] $*"; }

for db in "${DATABASES[@]}"; do
  file="/tmp/${db}_${DATE}.sql.gz"
  log "Dumping ${db}..."
  MYSQL_PWD="$DB_PASS" mysqldump --protocol=tcp -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" \
    --single-transaction --no-tablespaces --routines --triggers --events --databases "$db" \
    | gzip > "$file"
  log "Uploading ${db} to r2:${R2_BUCKET}/..."
  /usr/local/bin/rclone copyto "$file" "r2:${R2_BUCKET}/$(basename "$file")"
  rm -f "$file"
  log "Done ${db}"
done

log "Backup cycle complete."
