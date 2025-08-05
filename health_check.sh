#!/bin/bash
echo "System Health Report - $(date)"
echo "-----------------------------"
echo "CPU Load:"
uptime

echo "Memory Usage:"
free -h

echo "Disk Usage:"
df -h

