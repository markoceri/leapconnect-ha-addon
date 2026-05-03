#!/usr/bin/with-contenv bashio
set -e

LOG_LEVEL=$(bashio::config 'log_level')

export LOG_LEVEL
export HISTORY_DB_PATH=/data/history.db
export DATA_DIR=/data

bashio::log.info "Starting LeapConnect (log_level=${LOG_LEVEL})..."

cd /app
exec uv run uvicorn main:app --host 0.0.0.0 --port 8099
