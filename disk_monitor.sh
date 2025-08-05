#!/bin/bash

THRESHOLD=80
echo "🔍 Checking disk usage..."
df -h | awk 'NR>1 {print $5, $6}' | while read output; do
    usep=$(echo $output | awk '{ print $1}' | tr -d '%')
    partition=$(echo $output | awk '{ print $2}')
    if [ "$usep" -ge "$THRESHOLD" ]; then
        echo "⚠️  Warning: Disk usage on $partition is ${usep}%"
    else
        echo "✅ $partition is OK - Usage: ${usep}%"
    fi
done

