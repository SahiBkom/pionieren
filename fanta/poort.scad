include <fanta.scad>

module poort(hoogth, breedte) {
  hoek = 20;

  for(i=[-1,1])
  translate([0,i*hoogth / 2,0]) 
  driepoot(hoogth, hoek);

  // balken
  translate([0,0, sin(90-hoek)*hoogth]) 
  rotate(a=90, v=[1,0,0]) 
  paal(breedte, true);

  translate([-sin(hoek) * 150 +pd/2 ,0, sin(90-hoek)*hoogth - 150]) 
  rotate(a=90, v=[1,0,0]) 
  paal(breedte, true);

  h = 300; // length palen onderkant
  for(i=[-1,1])
  translate([0,i*hoogth / 2,0]) 
  for (i = [60,180,300]) 
  rotate(a=i, v=[0,0,1]) 
  rotate(a=90, v=[1,0,0]) 
  translate([sqrt(pow(h,2)-pow(h/2,2))/3 - 10,pd,-h/2]) 
  paal(h, false);
}

poort(500, 600);