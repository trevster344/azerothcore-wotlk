#!/usr/bin/env bash
set -euo pipefail

: "${BACKUP_CRON_SCHEDULE:=0 3 * * *}"

cat > /etc/backup.env <<EOF
DOCKER_DB_ROOT_PASSWORD=${DOCKER_DB_ROOT_PASSWORD}
R2_ACCOUNT_ID=${R2_ACCOUNT_ID}
R2_BUCKET=${R2_BUCKET}
R2_ACCESS_KEY_ID=${R2_ACCESS_KEY_ID}
R2_SECRET_ACCESS_KEY=${R2_SECRET_ACCESS_KEY}
EOF
chmod 600 /etc/backup.env

{
  echo "PATH=/usr/local/bin:/usr/bin:/bin"
  echo "${BACKUP_CRON_SCHEDULE} root /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1"
} > /etc/cron.d/backup
chmod 600 /etc/cron.d/backup

crond || true

echo "[entrypoint] Running initial backup..."
if ! /usr/local/bin/backup.sh; then
  echo "[entrypoint] Initial backup FAILED (see /var/log/backup.log); will retry per cron schedule."
fi

echo "[entrypoint] Backup scheduled: '${BACKUP_CRON_SCHEDULE}'"
exec tail -f /var/log/backup.log
