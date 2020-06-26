include <fanta.scad>

module autobandMuur() {
  color("BurlyWood", 0.1)
  square ([300,300],center = true);
  
  for (i = [-1:1]) {
    translate([i * (28 * 2.56 + pd), 0, -100])
    paal(400, false);
  }

  for (z = [0:2]) 
  for (x = [-1,1]) 
  translate([x * (28 * 2.56 + pd) / 2 , 0, 28 * 2.56 / 2 + 28 * 2.56 * z])
  autoband();
}

autobandMuur();