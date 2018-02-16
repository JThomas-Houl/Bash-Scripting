#!/bin/bash

#this is gonna allow you to create files where and how many you wants

echo $USER #echos the user

ls /Users/$USER #lists all folder withing the users root 


echo Enter directory path to place folders "(Example: Week_1/apples/)"
read DIR


echo /Users/$USER/$DIR #prints users stated path

echo Enter the name of the folder you want to create
read FolderName

echo $FolderName


echo How many files do you want? #asks the user how many files they want 
read NumFiles #allows user input

echo $NumFiles #prints out user input




if [ $NumFiles > 0 ] #if statement checking the number is not 0
	then
		echo Is $NumFiles correct?
		echo Enter yes or no
		read Answer

		if(( $Answer = "yes" )) 
			then
			#creates a folders but not in stated dir
			echo mkdir $FolderName"{0..$NumFiles}" "/User/$USER/$DIR" 
			fi
			

	fi
