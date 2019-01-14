#for dependency you want all tex files  but for acronyms you do not want to include the acronyms file itself.
tex=$(filter-out $(wildcard *acronyms.tex) , $(wildcard *.tex))  


SRC= DMTN-102.tex

OBJ=$(SRC:.tex=.pdf)

#Default when you type make
all: $(OBJ)

$(OBJ): $(tex)
	latexmk -bibtex -xelatex -f $(SRC)

clean :
	latexmk -c
	rm *.pdf *.nav *.bbl *.xdv *.snm
