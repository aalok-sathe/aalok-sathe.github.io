#!/usr/bin/make -f

B2HCMD     = bibtex2html
HEAD    = cvheader.html
FOOT    = cvfooter.html
IN      = aalok-cv.bib
OUT     = aalok-cv.html
ARGS    = --nodoc --revkeys --background "\"\#f7e9cf\"" --style acm --style ieeetr $(IN)
LASTUP  = sed -i -r "s/(Last modified: ).*/\1$(shell date)/g"

VARS    = *.html

all: index.html cvresume.html clean


cvresume.html: $(HEAD) $(OUT) $(FOOT)
	$(LASTUP) $(FOOT)
	cat $^ > $@

$(OUT): $(IN) Makefile
	$(B2HCMD) $(ARGS)

index.html: FORCE
	$(LASTUP) $@

FORCE: ;

clean:
	rm -f *.bak *.aux *copy*
