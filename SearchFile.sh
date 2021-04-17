#!/bin/bash
echo "What would you like to do ?"
echo  "1 Unzip a folder"
echo  "2 Find a word that is on a file"
echo  "3 Unzip a folder and search for a Word"
echo  "4 Exit"
read option
case ${option} in 
	1) echo "Please paste the Directory of the Zipped folder"
	   echo "Format /home/USER/Desktop/FILE_NAME.zip "
	   read Folder
	   echo "Which Directory do you want to save the Documents"
	   echo "Format: /home/USER/Desktop/NEW_FOLDER_NAME/ "
	   read NewFolder
	   unzip $Folder -d $NewFolder
	   ;;

	2) echo "Paste the Directory which you wold like to search"
	   echo "Format: /home/USER/Desktop/FOLDER_NAME/ "
	   read SearchDirectory
           echo "What would you like to search "
	   read Sentence
	   grep -rl $Sentence $SearchDirectory
           ;;

	3) echo "Please paste the Directory of the Zipped folder"
	   echo "Format: /home/USER/Desktop/File_NAME.zip "
	   read Folder
	   echo "Which Directory do you want to save the Documents"
	   echo "Format /home/USER/Desktop/NEW_FOLDER_NAME/ "
	   read NewDir
	   unzip $Folder -d $NewDir
	   echo "Which word would you like to search?"
	   read word
	   # grep will search in the folder and will display in which files the word is found.
	   grep -rl $word $NewDir
           ;;
	4) echo " Thank you !! "
		exit 
	   ;;
	*) echo " Wrong Input, press the number and then enter"
	   ;; 
esac
