# Мониторинг свободного места на сервере

REMOTE_SERVER=$1
EMAIL=$2
LIMIT=$3

echo "Checking disk usage on server $REMOTE_SERVER..."
DISK_USAGE=$(ssh $REMOTE_SERVER "df -h --output=pcent / | tail -1 | tr -d ' %'")

if [ "$DISK_USAGE" -gt "$LIMIT" ]; then
    echo "Disk usage is above limit ($LIMIT%). Sending email notification to $EMAIL..."

    echo "Disk usage on $REMOTE_SERVER is at $DISK_USAGE%." | mail -s "Disk Usage Alert for $REMOTE_SERVER" $EMAIL

    if [ $? -eq 0 ]; then
        echo "Notification sent successfully to $EMAIL."
    else
        echo "Failed to send notification to $EMAIL."
    fi
fi
