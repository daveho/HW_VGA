PDFS = $(shell ls readout-overview-*.pdf)
PNGS = $(PDFS:.pdf=.png)

readout-overview-%.png : readout-overview-%.pdf
	qpdf --empty --pages readout-overview-$*.pdf 2 -- readout-overview-$*-tmp.pdf
	convert -background white -alpha remove -alpha off -density 900 -resize 1920x1080 readout-overview-$*-tmp.pdf readout-overview-$*.png
	rm -f readout-overview-$*-tmp.pdf

all : $(PNGS)
