
.PHONY: paper.pdf all clean

all: paper.pdf

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

paper.pdf: paper.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make paper.tex

clean:
	latexmk -CA
