PDFS = $(shell ls HW_VGA_0*.pdf)
PNGS = $(PDFS:.pdf=.png)

%.png : %.pdf
	qpdf --empty --pages $*.pdf 7 -- $*_tmp.pdf
	convert -density 900 -resize 1440x1080 $*_tmp.pdf $*_tmp.png
	convert vram_bg.png $*_tmp.png -gravity Center -composite $*.png
	rm -f $*_tmp.pdf $*_tmp.png

all : $(PNGS)
