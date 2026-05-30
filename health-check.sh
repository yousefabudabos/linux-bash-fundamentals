#!/bin/bash


echo "===================="
echo "Health Check"
echo "===================="



echo "Nginx Status"
service nginx status

echo "============"

echo "Disk Usage"
df -h / | tail -1

echo "==========="

echo "Memory"
free -h | grep Mem

echo "==========="

echo "Network"
ip a

echo "==========="

echo "Logs"
tail -5 /var/log/nginx/access.log
echo "$(date) - Health check completed" >> /home/kali/health-check.log
