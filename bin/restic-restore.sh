#!/bin/sh

if [ -z "$(ls -A $RESTIC_PATH)" ]
then
    echo "Restoring backup; $RESTIC_PATH empty"
    echo restic restore --verbose --host $RESTIC_HOST --path $RESTIC_PATH --target / latest
    restic restore --verbose --host $RESTIC_HOST --path $RESTIC_PATH --target / latest
    echo find $RESTIC_PATH -type f
    find $RESTIC_PATH -type f
else
    echo "Not restoring backup; $RESTIC_PATH not empty"
fi
