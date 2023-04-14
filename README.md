# Backup

## Description

Juste un petit script de backup

## Pre-requis backup

* `aescrypt`
* `shred`

## Usage backup

```
Usage : backup [option]

Option :
-h or --help ........................... Show help
-v or --version ........................ Show version
-V or --verbose ........................ Verbose mode
-f "<dir1> [dirN]" ..................... Source folder
-c <config> ............................ File which contain source folders name
-r <backupDir> ......................... Restore backup from backupDir to outputDir
-g <config> [branch] ................... Push file into a git repo
-o <outputDir> ......................... Destination folder
-e ..................................... Encrypt with passphrase
-l <logFile> ........................... Log file
-n <name> .............................. Name of output archive (automatically add .tar.gz)
-s <nbToSave> .......................... Save nbToSave backup and delete other

Example :
backup -f "dir_1 dir_2 dir_3" -o dest_folder
backup -c config.txt -o dest_folder
backup -f "dir_1 dir_2 dir_3" -o dest_folder -l logfile.log
backup -f "dir_1 dir_2 dir_3" -o dest_folder -e
backup -r /path/to/backup/ -o path/to/extract -n name
backup -g config.txt branch_name -o repo_folder

Config file example :
path/to/dir_1
# comment
path/to/dir_3
```

## Pre-requis getdotfile

* `bat`

## Usage getdotfile

```
Usage: getdotfile [options] <file> [files] ...

Options :
-h or --help       Display this help
-v or --version    Display version
-b <branch>        Branch to use (default: compute-1)
-o <file>          Output directory
-B                 Backup of an existing file and add "_old" at the end
-r                 Output file to stdout
-d                 Diff between local and remote file

Example :
getdotfile .vimrc
getdotfile .vimrc .tmux.conf
getdotfile -B .vimrc
getdotfile -o .config i3/config
getdotfile -B -o .config i3/config
```
