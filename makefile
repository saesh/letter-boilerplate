TEX = pandoc
FILE ?= letter.md
TEMPLATE ?= template.tex
src = $(TEMPLATE) $(FILE)
FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
