#!/usr/bin/make -f

CMD     = bibtex2html
HEAD    = cvheader.html
FOOT    = cvfooter.html
IN      = aalok-cv.bib
OUT     = aalok-cv.html
ARGS    = --nodoc --reverse-sort --revkeys --background "\"\#f7e9cf\"" --style acm $(IN)

cvresume.html: $(HEAD) $(OUT) $(FOOT)
	cat $^ > $@

$(OUT): $(IN) Makefile
	$(CMD) $(ARGS)
