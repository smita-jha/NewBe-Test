#!/bin/bash
# this program random numbers between 1 and 100. 
clear
echo "Hello, "${USER}
date;
guess=1
## Start loop of game here
while true; do
n1=$(( ( RANDOM % 100 ) +1 ))
echo "How many files are there in the current directory?"
echo  "Guess a number between 1 and 100. Guess:"

while read n2; do
    if [[ $n2 -eq $n1 ]]; then
        break;
    else
        if [[ $n2 -gt $n1 ]]; then
            echo -n "Sorry, your guess is too high. Guess again: "
        elif [[ $n2 -lt $n1 ]]; then
            echo -n "Sorry, your guess is too low. Guess again: "
        fi
    fi
    guess=$(( $guess + 1 ))
done
echo
echo "Congratulations! You win!"
if [[ $guess == 1 ]]; then
    echo "It took you $guess guess to get $n1."
else
    echo "It took you $guess guesses to get $n1."
fi
echo

read -p "Do you want to try again (y/n)? " choice
case $choice in
    [Yy]* ) guess=1;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
esac
## End loop of game here
done
