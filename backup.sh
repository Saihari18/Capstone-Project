SOURCE="$HOME/Documents"
DEST="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$DEST/backup_$DATE"
mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE"/* "$BACKUP_DIR" 2>/dev/null
echo "✅ Backup completed successfully!"
echo "📂 Files backed up to: $BACKUP_DIR"