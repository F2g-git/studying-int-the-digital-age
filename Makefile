TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
PRE =  $(TEX) -ini -job-name="preamble" "&pdflatex preamble.tex\dump"
BIB = bibtex

.PHONY: all view

all : main.pdf purge

view: 
	open main.pdf
	
main.pdf: 
	latexmk -pdf LaTeX\main.tex
	

purge:
	-rm -f *.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk,nav,snm}
	-rm -f .\Misc\*.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk,nav,snm}