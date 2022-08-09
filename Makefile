.DEFAULT_GOAL := build
.PHONY: build move clean

build:
	latexmk -pdflatex=lualatex -pdf -jobname=build/bardelli-cv-$(shell date +'%Y%m%d') bardelli-cv.tex

move:
	cp build/bardelli-cv-$(shell date +'%Y%m%d').pdf ../Website/static/files/bardelli-cv.pdf

clean:
	rm -rf build/*
