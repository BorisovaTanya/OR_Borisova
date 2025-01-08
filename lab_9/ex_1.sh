#Архивирование файлов и скачивание с сервера с последующим разархивированием

REMOTE_SERVER=$1
REMOTE_DIR=$2
ARCHIVE_NAME="$(date +%Y%m%d%H%M%S).tar.gz"

echo "Copying directory $REMOTE_DIR from server $REMOTE_SERVER..."
ssh $REMOTE_SERVER "tar -czf ~/$ARCHIVE_NAME -C $(dirname $REMOTE_DIR) $(basename $REMOTE_DIR)"

echo "Downloading archive $ARCHIVE_NAME from server $REMOTE_SERVER..."
scp $REMOTE_SERVER:~/$ARCHIVE_NAME .

echo "Removing archive $ARCHIVE_NAME from server $REMOTE_SERVER..."
ssh $REMOTE_SERVER "rm ~/$ARCHIVE_NAME"

echo "Extracting archive $ARCHIVE_NAME into the directory..."
mkdir ex_1
tar -xzf $ARCHIVE_NAME -C ex_1

echo "Success"
