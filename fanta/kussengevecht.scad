include <fanta.scad>


module kussengevecht() {
  color("BurlyWood", 0.1)
  square ([300,600],center = true);

  // mattras
  color("Ivory", 0.9)
  for(i=[-1:1])
  translate([0, i* 85, 0])
  cube(size = [220,80,10], center = true);

  for(i=[-1,1])
  translate([0, i * 160, 25])
  rotate([0,0,90]) 
  paal(300, true);

  translate([pd, 0, 125])
  rotate([90,0,0]) 
  paal(400, true);

}


kussengevecht();

