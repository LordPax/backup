#!/bin/bash

backup_folders="source_folders1 source_folders2 source_foldersN"
backup_dest="destination_folders"

if [[ ! -d $backup_folders ]]; then
    echo "dossier source inexistant"
    exit 1
fi

if [[ ! -d $backup_dest ]]; then
    echo "dossier de destination inexistant"
    exit 1
fi

date=$(date +%Y-%m-%d)
hostname=$(hostname -s)

archive_name="backup_${hostname}_${date}.tar.gz"

echo "création de $backup_folders vers $backup_dest/$archive_name"

tar czfv $backup_dest/$archive_name $backup_folders

echo "backup $backup_dest/$archive_name fini"
