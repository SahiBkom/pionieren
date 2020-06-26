include <fanta.scad>


module klimDrieHoek(length, hoek) {
  // vierpoten
  for (i = [-1,1])
  translate([0,i*200,0]) 
  vierpoot(length, hoek);

  // balken
  translate([0,0, sin(90-hoek) * (length + pd/2)]) 
  rotate(a=90, v=[1,0,0]) 
  paal(length, true);

  for (i = [-1,1])
  translate([i * sin(hoek)* (length - 50) + i * pd, 0, pd]) 
  rotate(a=90, v=[1,0,0]) 
  paal(length, true);

  // net
  for (i = [-1,1])
  color("blue", 0.25)
  translate([i*sin(hoek) * (length/2),0, sin(90-hoek) * (length/2)]) 
  rotate(a=i*(90-hoek), v=[0,1,0]) 
  net(length, length - 100, 15);
  // square ([length,length - 100],center = true);
}

klimDrieHoek(500, 30);