# Makefile for Guessing Game project

.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Project Description" >> README.md
	@echo "This project is a bash shell game where players guess the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "## Make Execution Date" >> README.md
	@echo "Make was run on: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "## Lines of Code" >> README.md
	@echo "The guessinggame.sh script contains $$(wc -l < guessinggame.sh) lines of code." >> README.md

clean:
	rm -f README.md
