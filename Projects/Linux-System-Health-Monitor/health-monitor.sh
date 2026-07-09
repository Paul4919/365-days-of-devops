#!/bin/bash

mkdir -p reports

REPORT_FILE="reports/system-report-$(date +%Y-%m-%d_%H-%M-%S).txt"

{
echo "======================================="
echo "     LINUX SYSTEM HEALTH MONITOR"
echo "======================================="

echo ""
echo "Current User:"
whoami

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current Date:"
date

echo ""
echo "Current Directory:"
pwd

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 Running Processes:"
ps -eo pid,comm,%mem,%cpu --sort=-%cpu | head -6

echo ""
echo "Kernel Version:"
uname -r

echo ""
echo "======================================="
echo "System Health Check Complete"
echo "======================================="
} | tee "$REPORT_FILE"
