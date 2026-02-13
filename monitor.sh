#!/bin/bash
# Author: ArifulHudaJoy
# Project: Linux System Automation
# Description: Logs CPU, Memory, and Top Processes to a log file.

LOG_FILE="$HOME/system_monitor.log"

echo "===== SYSTEM MONITOR =====" >> $LOG_FILE
date >> $LOG_FILE

echo "--- CPU Load ---" >> $LOG_FILE
uptime >> $LOG_FILE

echo "--- Memory Usage ---" >> $LOG_FILE
free -h >> $LOG_FILE

echo "--- Running Processes ---" >> $LOG_FILE
ps aux --sort=-%cpu | head -5 >> $LOG_FILE

echo "" >> $LOG_FILE
