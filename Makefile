
aalok-cv.html: aalok-cv.bib Makefile
	bibtex2html --nodoc --reverse-sort --revkeys --background f7e9cf --style acm aalok-cv.bib

aalok-cv_bib.html: aalok-cv.bib Makefile
	bibtex2html --nodoc --reverse-sort --revkeys --background f7e9cf --style acm aalok-cv.bib
