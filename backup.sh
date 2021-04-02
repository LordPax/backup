#!/bin/bash

help="
usage : backup [option] <pass_phrase> <source_folder> <destination_folders>\n
\n
option :\n
-h or --help ........................... affiche l'aide\n
"
pass=""
backup_folders=""
backup_dest=""

if [ $# -eq 1 ] && [ $1 == "--help" ] || [ $1 == "-h" ]; then
    echo -en $help
    exit 1
fi

if [ $# -eq 3 ]; then
    pass=$1
    backup_folders=$2
    backup_dest=$3
fi

if [ ! -d $backup_folders ]; then
    echo "dossier source inexistant"
    exit 1
fi

if [ ! -d $backup_dest ]; then
    echo "dossier de destination inexistant"
    exit 1
fi

if [ $# -ge 3 ]; then
    date=$(date +%Y-%m-%d)
    hostname=$(hostname -s)
    archive_name="backup_${hostname}_${date}.tar.gz"

    echo "création de $backup_folders vers $backup_dest/$archive_name"
    tar czfv $backup_dest/$archive_name $backup_folders

    echo "chiffrement de $backup_dest/$archive_name"
    gpg --batch --passphrase $pass -cv $backup_dest/$archive_name

    echo "backup $backup_dest/$archive_name fini"
fi