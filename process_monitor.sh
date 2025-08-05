#!/bin/bash
echo "Checking for high CPU consuming processes..."
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 10

read -p "Do you want to kill any process? (y/n): " ans
if [ "$ans" == "y" ]; then
    read -p "Enter PID to kill: " pid
    kill -9 $pid && echo "Process $pid killed."
fi

