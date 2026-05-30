# Linux Bash Fundamentals

Practical Linux administration scripts built as part of my Cloud/DevOps learning path.

## Purpose

This repository documents hands-on Linux skills used in real Cloud and DevOps workflows,
including system administration, automation, and server management.

## Repository Structure

\`\`\`
linux-bash-fundamentals/
├── system-info.sh      # Displays system information
├── health-check.sh     # Service health monitoring script
└── README.md
\`\`\`

## Scripts

### system-info.sh
Displays key system information including OS, network, disk, and memory.

\`\`\`bash
./system-info.sh
\`\`\`

### health-check.sh
Monitors Nginx status, disk usage, memory, network, and recent access logs.
Appends results to `/home/kali/health-check.log` with timestamps.

\`\`\`bash
./health-check.sh
\`\`\`

## Skills Demonstrated

- Linux filesystem navigation and file permissions
- User and group management
- SSH key generation and configuration
- Package management with apt
- Process management with ps and kill
- Service management with service
- Log analysis with tail and grep
- Environment variables and ~/.bashrc
- Cron job scheduling
- Nginx installation and configuration
- Git branching workflow
- Bash scripting: variables, conditions, pipes, awk, grep

## Environment

- OS: Kali Linux (WSL2)
- Shell: Bash
- Web Server: Nginx 1.28.2

## Author

Yousef Abudabos — Cloud & DevOps Engineer in progress  
GitHub: [yousefabudabos](https://github.com/yousefabudabos)
