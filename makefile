TEX = pandoc
FILE ?= letter.md
TEMPLATE ?= template.tex
src = $(TEMPLATE) $(FILE)
FLAGS = --pdf-engine=xelatex
OUTPUT = $(basename $(FILE)).pdf

build : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $(OUTPUT) --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
