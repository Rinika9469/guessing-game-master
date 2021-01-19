#!/usr/bin/env bash

echo "[Welcome to Guessing game v0.1]"

function game {
	echo "Please enter the number of files in the current directory:"
	read guessing
    count=$(ls -1 | wc -l)
}

game

while [[ $guessing -ne $count ]]
do
    if [[ $guessing -lt $count ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	game
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1