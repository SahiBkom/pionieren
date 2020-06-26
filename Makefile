all: mvlot mhottub-op-hoogte
# How to create a top vieuw?
#	${cad} -o vlot_top.png --imgsize=4096,4096 --camera=translate_0,0,4,rot_0,0,0,10000 vlot.scad 
#	openscad -o vlot_top.png --imgsize=4096,4096 --camera=eye_0,0,10000,center_90,90,90 vlot.scad 
#  --autocenter --viewall

mvlot:
	openscad -o vlot/vlot_512.png --imgsize=4096,4096 vlot/vlot.scad
	openscad -o vlot/vlot_4096.png --imgsize=4096,4096 vlot/vlot.scad

mhottub-op-hoogte:
	openscad -o hottub-op-hoogte/hottub-op-hoogte_512.png --imgsize=4096,4096 hottub-op-hoogte/hottub-op-hoogte.scad
	openscad -o hottub-op-hoogte/hottub-op-hoogte_4096.png --imgsize=4096,4096 hottub-op-hoogte/hottub-op-hoogte.scad

mfanta:
	echo "# fanta" > fanta/reamdme.md; \
	for name in fanta/*.scad; do \
		file=$${name##*/} ; \
		echo "## $${file}" >> fanta/reamdme.md; \
		echo "[![schema](./$${file%.*}_512.png)](./$${file%.*}_4096.png)" >> fanta/reamdme.md; \
		openscad -o $${name%.*}_512.png --imgsize=4096,4096 $${name}; \
		openscad -o $${name%.*}_4096.png --imgsize=4096,4096 $${name}; \
	done