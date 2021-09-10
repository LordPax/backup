# Backup
## Description
Juste un petit script de backup

## Usage
```
Usage : $0 [option]

Option :
-h or --help ........................... Show help
-v or --version ........................ Show version
-V or --verbose ........................ Verbose mode
-f \"<dir1> [dirN]\" ..................... Source folder
-c <config> ............................ File which contain source folders name
-r <backupDir> ......................... Restore backup from backupDir to outputDir
-o <outputDir> ......................... Destination folder
-p <pass> .............................. Pass phrase
-l <logFile> ........................... Log file
-n <name> .............................. Name of output archive (automatically add .tar.gz)
-s <nbToSave> .......................... Save nbToSave backup and delete other

Example :
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder
backup -c config.txt -o dest_folder
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -l logfile.log
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -p passphrase
```