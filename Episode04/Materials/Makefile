PDFS = $(shell ls theory-*.pdf) $(shell ls schematic-*.pdf)
PNGS = $(PDFS:.pdf=.png)

theory-%.png : theory-%.pdf
	qpdf --empty --pages theory-$*.pdf 2 -- theory-$*-tmp.pdf
	convert -background white -alpha remove -alpha off -density 900 -resize 1920x1080 theory-$*-tmp.pdf theory-$*.png
	rm -f theory-$*-tmp.pdf

schematic-%.png : schematic-%.pdf
	qpdf --empty --pages schematic-$*.pdf 5 -- schematic-$*_tmp.pdf
	convert -density 900 -resize 1440x1080 schematic-$*_tmp.pdf schematic-$*_tmp.png
	convert vram_bg.png schematic-$*_tmp.png -gravity Center -composite schematic-$*.png
	rm -f schematic-$*_tmp.pdf schematic-$*_tmp.png

all : $(PNGS)
