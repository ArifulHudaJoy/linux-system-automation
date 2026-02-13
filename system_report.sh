#!/bin/bash
# Author: ArifulHudaJoy
# Project: Linux System Automation
# Description: Generates a summary report of the system's current state.

REPORT="$HOME/system_report.txt"

echo "==========================================" > "$REPORT"
echo "         SYSTEM STATUS REPORT            " >> "$REPORT"
echo "==========================================" >> "$REPORT"
echo "Generated on: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

echo "--- Hostname Information ---" >> "$REPORT"
hostnamectl | grep "Static hostname" >> "$REPORT"
echo "" >> "$REPORT"

echo "--- Kernel Version ---" >> "$REPORT"
uname -r >> "$REPORT"
echo "" >> "$REPORT"

echo "--- System Uptime ---" >> "$REPORT"
uptime -p >> "$REPORT"
echo "" >> "$REPORT"

echo "--- Summary of Disk Usage ---" >> "$REPORT"
df -h --total | grep "total" >> "$REPORT"
echo "" >> "$REPORT"

echo "Report saved to: $REPORT"
