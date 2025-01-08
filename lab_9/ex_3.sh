# Синхронизация файлов между локальной машиной и удалённым сервером

LOCAL_DIR=$1
REMOTE_SERVER=$2
REMOTE_DIR=$3
EXCLUDE_FILE=$4

echo "Starting file synchronization from $LOCAL_DIR to $REMOTE_SERVER:$REMOTE_DIR..."
rsync -avz --exclude-from="$EXCLUDE_FILE" -e ssh "$LOCAL_DIR/" "$REMOTE_SERVER:$REMOTE_DIR"
