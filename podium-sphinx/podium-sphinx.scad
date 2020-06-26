module blok(x1, y1, x2, y2, z) {
polyhedron(
  points=[ 
		[0,0,0], [x1,0,0], [0,y1,0], [x1,y1,0], 
		[0,0,z], [x2,0,z], [0,y2,z], [x2,y2,z] 
	],
  faces=[  
		[0,1,2], [1,3,2], // onder
		[0,4,1], [5,1,4], // voor
		[0,2,4], [4,2,6], // links
		[5,3,1], [5,7,3], // rechts
		[4,6,5], [5,6,7], // boven
		[7,6,2], [3,7,2]  // achter 
	]                         
	);

}

// Link Recht Voor Achter Onder Boven
module blokB(lvo, rvo, lao, rao, lvb, rvb, lab, rab) {

polyhedron(
  points=[lvo, rvo, lao, rao, lvb, rvb, lab, rab],
  faces=[  
		[0,1,2], [1,3,2], // onder
		[0,4,1], [5,1,4], // voor
		[0,2,4], [4,2,6], // links
		[5,3,1], [5,7,3], // rechts
		[4,6,5], [5,6,7], // boven
		[7,6,2], [3,7,2]  // achter 
	]                         
);
}


module vloer() {
	color("LightCyan")
	square([122*6, 244*2], center=true);
}


module gezicht() {
translate([0,-150,0])
blokB(	[ -70,-200,  0],[ 70,-200,  0],[-200,70,0  ],[200,70,  0],
		[-180,-100,400],[180,-100,400],[-200,70,550],[200,70,550]);
}

module zijkant() {
  color("blue") {
    translate([350/2,-80,0])
	blok(250,250,100,100,500);

    translate([-350/2, -80,0])
    mirror([1,0,0]) 
    blok(250,250,100,100,500);
  }
}


module top() {
    translate([0, -80,500])
	rotate([0,-90,0])
    blok(150,100,50,100,250);


    translate([0, 20,500])
	rotate([0,-90,-180])
    blok(150,100,50,100,250);
}



module sphinx() {
  scale([35,35,35])
  translate([0,9,12.5-37])
  #intersection(){
	translate([0,-9,37]) cube([25,25,25], center=true);
	import_stl("./sphinx_t.stl", convexity=3);
  }
}



	vloer();
 	gezicht();
	zijkant();
	top();
// 	sphinx();
