#!/bin/bash

SOURCE="/home/maruf/Desktop/project"
DEST_DIR="/home/maruf/Desktop/project/backup"
DEST_FILE="$DEST_DIR/documents_$(date +%F_%H-%M-%S).tar.gz"

mkdir -p "$DEST_DIR"

if [ -d "$SOURCE" ]; then
    tar -czf "$DEST_FILE" "$SOURCE"
    echo " Backup completed: $DEST_FILE"
else
    echo " Source folder not found: $SOURCE"
fi

