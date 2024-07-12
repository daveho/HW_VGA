PDFS = $(shell ls readout-overview-*.pdf) $(shell ls schematic_*.pdf)
PNGS = $(PDFS:.pdf=.png)

readout-overview-%.png : readout-overview-%.pdf
	qpdf --empty --pages readout-overview-$*.pdf 2 -- readout-overview-$*-tmp.pdf
	convert -background white -alpha remove -alpha off -density 900 -resize 1920x1080 readout-overview-$*-tmp.pdf readout-overview-$*.png
	rm -f readout-overview-$*-tmp.pdf

schematic_%.png : schematic_%.pdf
	qpdf --empty --pages schematic_$*.pdf 6 -- schematic_$*_tmp.pdf
	convert -density 900 -resize 1440x1080 schematic_$*_tmp.pdf schematic_$*_tmp.png
	convert vram_bg.png schematic_$*_tmp.png -gravity Center -composite schematic_$*.png
	rm -f schematic_$*_tmp.pdf schematic_$*_tmp.png

all : $(PNGS)
