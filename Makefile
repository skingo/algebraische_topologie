
MODE = batchmode
TEX = pdflatex -synctex=1 -interaction=$(MODE)

HOMALGFILES=$(wildcard homologische_algebra/2017-*.tex)
COHOMFILES=$(wildcard cohomologie/201?-*.tex)

FILES=macros.tex $(HOMALGFILES) $(COHOMFILES)

%.pdf: %.tex
	$(TEX) $<

.PHONY: algebraische_topologie
algebraische_topologie: algebraische_topologie.pdf

algebraische_topologie.pdf: $(FILES)
