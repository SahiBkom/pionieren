all:
	openscad -o vlot/vlot.png --imgsize=4096,4096 vlot/vlot.scad

# How to create a top vieuw?
#	${cad} -o vlot_top.png --imgsize=4096,4096 --camera=translate_0,0,4,rot_0,0,0,10000 vlot.scad 
#	openscad -o vlot_top.png --imgsize=4096,4096 --camera=eye_0,0,10000,center_90,90,90 vlot.scad 
#  --autocenter --viewall
