#! /usr/bin/env bash

let n_files=$(ls|wc -l)

function user_util {
echo "How many files are in the current directory? Type your guess and then press Enter:"
read guess # global
echo "Your guess: $guess"  
}

user_util

if [[ $n_files -eq $guess ]] 
then 
echo "Congratulations!" 
exit 0
else
[[ $guess -gt $n_files ]] && echo "Your guess is to HIGH, please try a SMALLER number:" 
[[ $guess -lt $n_files ]] && echo "Your guess is to LOW, please try a other number:" 
fi

while [[ $guess -ne $n_files ]]
do
user_util
[[ $n_files -eq $guess ]] && echo "Congratulations!" && exit 0
[[ $guess -gt $n_files ]] && echo "Your guess is to HIGH, please try a SMALLER number:" 
[[ $guess -lt $n_files ]] && echo "Your guess is to LOW, please try a other number:" 
done
