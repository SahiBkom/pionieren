include <fanta.scad>


module valnet() {
  for(i=[-1,1])
  translate([400,i*250,0]) 
  driepoot(250, 45);

  // balken
  translate([400,0, sin(45)*250]) 
  rotate(a=90, v=[1,0,0]) 
  paal(600, true);

  // balken
  translate([-100, 0, 260]) 
  rotate([90,0,0]) 
  paal(600, true);

  translate([100, 0, 225]) 
  rotate([90,0,0]) 
  paal(600, true);


  translate([400+150,0, 10]) 
  rotate(a=90, v=[1,0,0]) 
  paal(600, true);

  translate([-380,0, 15]) 
  rotate(a=90, v=[1,0,0]) 
  paal(600, true);

  for(i=[-1,1])
  translate([-200, i * 240, 180])
  rotate([i*10,45,0]) 
  paal(500, true);

  for(i=[-1,1])
  translate([150, i * 210, 230])
  rotate([-i*6,100,0]) 
  paal(600, true);

  // bomen
  color("SaddleBrown" , 0.5)
  for(i=[-1,1])
  translate([0,i*300,150]) 
  cylinder(h = 300, r=100, center=true);

  
}


valnet();