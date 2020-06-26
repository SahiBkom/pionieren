all: vlot hottub-op-hoogte

# How to create a top vieuw?
#	${cad} -o vlot_top.png --imgsize=4096,4096 --camera=translate_0,0,4,rot_0,0,0,10000 vlot.scad 
#	openscad -o vlot_top.png --imgsize=4096,4096 --camera=eye_0,0,10000,center_90,90,90 vlot.scad 
#  --autocenter --viewall

vlot:
	openscad -o vlot/vlot_512.png --imgsize=4096,4096 vlot/vlot.scad
	openscad -o vlot/vlot_4096.png --imgsize=4096,4096 vlot/vlot.scad

hottub-op-hoogte:
	openscad -o hottub-op-hoogte/hottub-op-hoogte_512.png --imgsize=4096,4096 hottub-op-hoogte/hottub-op-hoogte.scad
	openscad -o hottub-op-hoogte/hottub-op-hoogte_4096.png --imgsize=4096,4096 hottub-op-hoogte/hottub-op-hoogte.scad
