# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file 
# ---------------------------------------------------------

# Main filename
FILE=Thesis

# ---------------------------------------------------------

all:
	pdflatex  ${FILE}
	makeindex $(FILE).nlo -s nomencl.ist -o $(FILE).nls
	bibtex ${FILE}
	pdflatex  ${FILE}
	pdflatex  ${FILE}

clean:
	(rm -rf *.aux *.bbl *.blg *.nlo *.nls *.idx *.ind *.ilg *.lof *.log *.lop *.lot *.out *.spl *.toc)


veryclean:
	make clean
	rm -f *~ *.*%
	rm -f $(FILE).pdf $(FILE).ps

