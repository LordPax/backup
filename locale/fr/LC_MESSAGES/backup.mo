��          �      �       H  %   I     o  2   }     �  -   �  (   �     %     9      O     p  &   �     �  �  �  �   �  &   �     �  1   �     �  .   
  )   9     c     x  2   �  2   �  (   �         3                           
             	                         Backup $backup_dest/$archive_name end Compress of : Destination \"$backup_dest\" folder does not exist Destination folder is missing Encryption $backup_dest/$archive_name.gpg end Encryption of $backup_dest/$archive_name Log file is missing Passphrase is missing Something wrong with compression Something wrong with encrytion Source \"$file\" folder does not exist Source folder is missing Usage : $0 [option]

Option :
-h or --help ........................... Show help
-v or --version ........................ Show version
-f \"<dir1> [dirN]\" ..................... Source folder
-o <outputDir> ......................... Destination folder
-p <pass> .............................. Pass phrase
-c <config> ............................ File which contain source folders name
-l <logFile> ........................... Log file
-n <name> .............................. Name of output archive (automatically add .tar.gz)

Example :
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder
backup -c config.txt -o dest_folder
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -l logfile.log
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -p passphrase Project-Id-Version: 
PO-Revision-Date: 
Last-Translator: 
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: fr
X-Generator: Poedit 2.4.1
 Backup $backup_dest/$archive_name fini Compression de : Dossier destination \"$backup_dest\" n'existe pas Dossier destination manquant Chiffrement de $backup_dest/$archive_name fini Chiffrement de $backup_dest/$archive_name Fichier log manquant Passphrase manqante Quelque chose c'est mal passer avec la compression Quelque chose c'est mal passer avec le chiffrement Le dossier source \"$file\" n'existe pas Dossier source manquant Usage : $0 [option]

Option :
-h or --help ........................... Affiche l'aide
-v or --version ........................ Affiche la version
-f \"<dir1> [dirN]\" ..................... Dossier source
-o <outputDir> ......................... Dossier destination
-p <pass> .............................. Phrase de pass
-c <config> ............................ Fichier qui contien le nom des dossiers source
-l <logFile> ........................... Fichier de log
-n <name> .............................. Nom de l'archive (ajouté automatiquement .tar.gz)

Example :
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder
backup -c config.txt -o dest_folder
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -l logfile.log
backup -f \"dir_1 dir_2 dir_3\" -o dest_folder -p passphrase 