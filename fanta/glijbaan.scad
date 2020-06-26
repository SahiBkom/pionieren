include <fanta.scad>

// https://www.veiligheid.nl/allesoverspelen/eisen-speeltoestellen/glijbaan
module glijbaan() {
  color("green")
  translate([0, 200, 0])
  cube([400,1000,1], true);
  
    translate([-25, 0, 0])
  rotate(a=-65 + 180, v=[0,0,1]) 
  driepoot(700, 25);
  
  translate([25, 450, 0])
     rotate(a=65, v=[0,0,1]) 
  driepoot(400, 35);
  
  translate([0, 450, 60])
      rotate(a=60, v=[1,0,0]) 
  cylinder(h = 600, r=80, center=false);
}

glijbaan();