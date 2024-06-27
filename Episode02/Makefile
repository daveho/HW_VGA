%.png : %.pdf
	qpdf --empty --pages $*.pdf 7 -- $*_tmp.pdf
	convert -density 900 -resize 1440x1080 $*_tmp.pdf $*_tmp.png
	convert vram_bg.png $*_tmp.png -gravity Center -composite $*.png
	rm -f $*_tmp.pdf $*_tmp.png

all : HW_VGA_001_vram_module.png
