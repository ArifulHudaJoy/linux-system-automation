#!/bin/bash
# Author: ArifulHudaJoy
# Project: Linux System Automation
# Description: Checks disk usage and logs an alert if it exceeds a threshold.

THRESHOLD=80
LOG_FILE="$HOME/disk_alert.log"

# This command gets the percentage of the main disk (/) 
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️ ALERT: Disk usage is high: ${USAGE}%" >> "$LOG_FILE"
    date >> "$LOG_FILE"
    echo "-------------------------------" >> "$LOG_FILE"
fi
