#!/bin/bash

# Created by AdamiPL @ TheWebSites.uk
# For Mac Users
# www.hamac.pl


if [ $1 ]
then
	echo "Selected path $1"
	echo "is correct? (y/n)"
	read d
	
	case "$d" in
		"y") sudo find $1 \( -name '.DS_Store' -or -name '.Trashes' -or -name '.fseventsd' -or -name '.TemporaryItems' -or -name '.apdisk' -or -name '._*' \) -exec rm -rf {} \; ;; 
		"n") exit ;;
		*) echo "Nothing chosen..."
	esac

else
	echo "Enter the path to scan eg: ./clean /Volumes/Dane/";
fi
