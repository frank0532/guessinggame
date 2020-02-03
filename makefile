README.md:
	touch README.md
	echo "guessinggame" > README.md
	date "+%c" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
