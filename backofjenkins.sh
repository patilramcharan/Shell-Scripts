#!/bin/bash

SOURCE_DIR="/var/lib/jenkins"
DESTINATION_DIR="/backup/jenkins"

BACKUP_FILENAME="jenkins_backup_$(date +'%date%').tar.gz

tar -zcvf "${DESTINATION_DIR}/${BACKUP_FILENAME}" -C "${SOURCE_DIR}


if [$? -eq 0];
then
echo "Jenkins Backup is sucessfull at: ${DESTINATION_DIR}/ ${BACKUP_FILENAME}"

else
echo :Jenkins Backup failed"

fi
