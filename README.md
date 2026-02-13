# Linux System Automation Toolkit
**Author:** ArifulHudaJoy  
**Category:** Systems Administration / DevOps  

### 📌 Project Overview
A collection of professional Bash scripts designed to automate essential Linux system administration tasks. This toolkit demonstrates my ability to handle system monitoring, log management, and reporting using native Linux tools.

### 🛠️ Included Tools
* **`monitor.sh`**: Logs CPU and Memory performance to track system health.
* **`disk_alert.sh`**: A proactive script that alerts when disk space exceeds 80%.
* **`log_cleanup.sh`**: Automates the removal of old logs to prevent disk saturation.
* **`system_report.sh`**: Generates a comprehensive summary of the system state.

### ⚙️ Automation (Cron Jobs)
To show my understanding of Linux scheduling, these scripts are designed to be run via `cron`:
- `*/5 * * * *` : Runs the monitor every 5 minutes.
- `0 0 * * *` : Runs the cleanup daily at midnight.

### 🚀 Skills Demonstrated
* **Bash Scripting:** Variables, Conditionals (`if/then`), and Redirection (`>>`).
* **Linux Internals:** Proficiency with `df`, `free`, `uptime`, `awk`, and `find`.
* **System Maintenance:** Automated cleanup and alerting logic.
