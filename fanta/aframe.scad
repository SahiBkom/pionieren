include <fanta.scad>

module aframe() {
  poot(2, 250, 20);
  translate([0,0, 25]) 
  rotate([0,90,6]) 
  paal(200, true);
}

aframe();