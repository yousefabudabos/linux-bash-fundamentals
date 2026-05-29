#!/bin/bash

echo "==============================="
echo "       System Information"
echo "==============================="

echo ""
echo "OS:       $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Hostname: $(hostname)"
echo "Uptime:   $(uptime -p)"

echo ""
echo "--- Network ---"
ip a | grep 'inet ' | grep -v '127.0.0.1' | awk '{print "IP: " $2}'

echo ""
echo "--- Disk Usage ---"
df -h / | tail -1 | awk '{print "Total: " $2 "  Used: " $3 "  Available: " $4 "  Use%: " $5}'

echo ""
echo "--- Memory ---"
free -h | grep Mem | awk '{print "Total: " $2 "  Used: " $3 "  Free: " $4}'

echo ""
echo "--- Running Services ---"
service --status-all 2>/dev/null | grep -c '\[ + \]' | xargs -I{} echo "Active services: {}"

echo ""
echo "--- Current User ---"
whoami

echo ""
echo "--- Date & Time"
date 

echo ""
echo "--- Hostname ---"
hostname


echo ""
echo "==============================="
