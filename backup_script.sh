#!/bin/bash

#Defining variables

BACKUP_SRC="/home/kalyes/important"
BACKUP_DST="/home/kalyes/backup_folder"
BACKUP_DATE=$(date +%m-%d-%H-%M)
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"

mkdir -p "$BACKUP_DST/$BACKUP_DATE"

# Archive the source directory

tar -czf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "$BACKUP_SRC"

# Verifying the backup was successfull

if [ $? -eq 0 ];then
	echo "Back up was successful: $BACKUP_FILENAME"
else
	echo "Back up failed"
fi
