include <fanta.scad>


module ladder() {
  color("BurlyWood", 0.1)
  square ([300,300],center = true);
  
  for (i = [-1:1]) {
    translate([i * (28 * 2.56 + pd), 0, -100])
    paal(400, false);
  }

  for (z = [0:2]) 
  translate([0 , -pd, 28 * 2.56 / 2 + 28 * 2.56 * z])
  rotate(a=90, v=[0,1,0]) 
  paal(200, true);
}



ladder();