#!/bin/bash
# backup.sh — Final Version with Logging & Error Handling

SOURCE="$HOME/Documents"
DEST="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$DEST/backup_$DATE"
LOGFILE="$DEST/backup_log.txt"

# Ensure destination exists
mkdir -p "$DEST"

# Redirect all output (stdout + stderr) to both terminal and log file
exec > >(tee -a "$LOGFILE") 2>&1

echo "===== Backup started at $(date) ====="

# Verify source exists
if [ ! -d "$SOURCE" ]; then
  echo "❌ Source folder not found: $SOURCE"
  echo "Backup aborted."
  exit 1
fi

# Try to create the new backup folder
mkdir -p "$BACKUP_DIR" || { echo "❌ Failed to create backup directory."; exit 1; }

# Copy files and handle errors
echo "📂 Copying files from $SOURCE to $BACKUP_DIR..."
if cp -r "$SOURCE"/* "$BACKUP_DIR" 2>/dev/null; then
  echo "✅ Backup completed successfully!"
else
  echo "⚠️  Some files could not be copied."
fi

echo "===== Backup finished at $(date) ====="
echo ""