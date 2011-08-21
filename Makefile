# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file 
# ---------------------------------------------------------

# Main filename
FILE=Thesis

PATH=/usr/texbin

# ---------------------------------------------------------

all:
	${PATH}/pdflatex  ${FILE}
	${PATH}/makeindex $(FILE).nlo -s nomencl.ist -o $(FILE).nls
	${PATH}/bibtex ${FILE}
	${PATH}/pdflatex  ${FILE}
	${PATH}/pdflatex  ${FILE}

clean:
	(rm -rf *.aux *.bbl *.blg *.nlo *.nls *.idx *.ind *.ilg *.lof *.log *.lop *.lot *.out *.spl *.toc)


veryclean:
	make clean
	rm -f *~ *.*%
	rm -f $(FILE).pdf $(FILE).ps

q:
	${PATH}/pdflatex ${FILE}