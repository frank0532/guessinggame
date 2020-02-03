README.md:
	touch README.md
	echo "The title of the project: guessinggame" > README.md
	echo >> README.md
	echo "Created time: " >> README.md
	date "+%c" >> README.md
	echo >> README.md
	echo "Lines of guessinggame.sh: "
	cat guessinggame.sh | wc -l >> README.md 
