README.md: guessinggame.sh
	touch README.md
	echo "my guessinggame project" > README.md
	date +"%Y.%m.%d-%H:%M:%S" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
