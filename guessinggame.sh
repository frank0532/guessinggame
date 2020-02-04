#!/usr/bin/env bash
# File: guessinggame.sh

function alert_guesser()
{
	echo "which number do you guess?"
	echo "type your number"
}

function get_guess_num()
{
	read guess_num
}

function guess()
{
	echo "Guess game begin."
	while [[ $guess_num -ne 3 ]]
	do
		if grep "^[[:digit:]]*$" <<< "$guess_num"
		then
			if [[ $guess_num -gt 3 ]]
			then
				echo "Your guess is too high."
			else
				echo "Your guess is too low."
			fi
			echo "The number of your guessing is wrong, so try it again."
		else
			echo "Your guess is not a number, please try it again."
		fi
		alert_guesser
		get_guess_num
	done
	echo "Congratulation, you win."
}

guess
