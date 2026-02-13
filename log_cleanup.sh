#!/bin/bash
# Author: ArifulHudaJoy
# Project: Linux System Automation
# Description: Automatically deletes log files older than 7 days to save space.

LOG_DIR="$HOME"

# 'find' searches for files ending in .log
# '-mtime +7' looks for files older than 7 days
# '-exec rm -f' deletes them safely
find "$LOG_DIR" -name "*.log" -type f -mtime +7 -exec rm -f {} \;

echo "Cleanup task completed on $(date)" >> "$HOME/cleanup_history.log"
