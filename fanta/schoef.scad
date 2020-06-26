include <fanta.scad>

module schoef(){
  // paal dik / oude boom
  cylinder(h = 300, r=25, center=false);
  
  for(i=[-1,1]) {
    translate([i*50, 200, 60])
    rotate(a=90, v=[1,0,0]) 
    paal(400, false);

    translate([0, i*190, 70])
    rotate(a=90, v=[0,1,0]) 
    paal(150, true);

    translate([0, i*70, 70])
    rotate(a=90, v=[0,1,0]) 
    paal(150, true);
    
    // ton
    translate([0, i*130, 90])
    rotate(a=90, v=[1,0,0])
      difference(){
        ton();
        translate([0, 20, 0])
        cube(90, true);
      }
  }
}

schoef();