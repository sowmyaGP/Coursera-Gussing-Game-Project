#!/usr/bin/env bash
guessed=0
function guessFolders() {
while [[ $guessed -eq 0 ]]
do
	echo "Please guess the number of files in the current folder - "
	read guess
	fileCount=$(ls -l | wc -l)
	if [[ $guess -eq $fileCount ]]
	then
		echo "You got it right"
		guessed=1
	elif [[ $guess -gt $fileCount ]]
	then 
		echo "Guess was higher than the actual value. Please guess again"
	else 
		echo "Guess was lower than the actual value. Please guess again"
	fi
done
}
guessFolders
