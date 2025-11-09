#!/bin/bash
# log_monitor.sh — Simple Log Monitoring Script for macOS

# The system log file to check
LOG_FILE="/var/log/system.log"

# Keywords to search for
KEYWORDS="error|fail|warning"

echo "🔍 Checking recent logs for issues..."

# Display the last 50 lines that match the keywords
tail -n 50 "$LOG_FILE" | grep -iE "$KEYWORDS"

# $? stores the exit status of the last command (grep)
if [ $? -eq 0 ]; then
  echo "⚠️  Warning: Potential issues found in recent logs!"
else
  echo "✅ No errors detected in the last 50 log entries."
fi