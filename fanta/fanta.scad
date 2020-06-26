// Johan Govers 2015
// OpenSCAD version 2014.03 


pd = 15; // paal diameter

module paal(l, center) {
  cylinder(h = l, r=pd / 2, center=center);
  echo("paal", l, "cm");
}


module ton() {
  color("blue")
  cylinder(h = 100, r=50, center=true);
  echo("ton 200l");  
}

module poot(p, length, hoek) {
  for (i = [0:360/p:360-(360/p)]) { 
    translate([0,0, sin(90-hoek) * (length - 50)]) 
    rotate([0, 180-hoek, i]) 
    translate([-pd/2,-pd/2,-50]) 
    paal(length, false);
  }
}

module driepoot(length, hoek) {
  poot(3, length, hoek);
}

module vierpoot(length, hoek) {
  poot(4, length, hoek);
}

// l=length, b=breet, m=maasgroote
module net(l, b, m) {
  for (i = [-b/2:m:b/2])
  translate([0,i, 0]) 
  rotate([0,90,0]) 
  cylinder(l, r=1, center=true);

  for (i = [-l/2:m:l/2])
  translate([i,0, 0]) 
  rotate([90,0,0]) 
  cylinder(b, r=1, center=true);
  echo ("net ", l, "x", b, " cm");
}

module autoband(inch_buiten = 28, inch_binnen = 20, h = 20) {
  color([0.5,0.5,0.5])
  rotate(a=90, v=[1,0,0]) 
  difference() {
    intersection() {
      sphere(r=inch_buiten*2.56/2, center=true);
      cylinder(h = h, r=inch_buiten*2.56/2,  center=true);
    }
    cylinder(h = 500, r=inch_binnen*2.56/2,  center=true);
  }
  echo("autoband");
}







// kussengevecht();
// ladder();
// autobandMuur();
// poort(500, 600);
// valnet();
// net(500,300,15);
// klimDrieHoek(500, 30);
// aframe();
// schoef();
// glijbaan();