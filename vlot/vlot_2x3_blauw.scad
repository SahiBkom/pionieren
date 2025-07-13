
module paal_blauw_y() {
  rotate([0,90,00])
    color("Blue") 
      cylinder(h=300, d=8, center=true);

}


module paal_blauw_x() {
  rotate([90,0,00])
    color("Blue") 
      cylinder(h=300, d=8, center=true);
}


module vat_200l()  {
   rotate([0,90,00])
   color("DeepSkyBlue") {
       cylinder(h=92, d=58, center=true);
   }
}

for (y = [-100, 0, 100]) {
    for (x = [-80, 80]) translate([x,y,0]) vat_200l();
}

for (y = [-100, 0, 100]) {
    translate([0,y + 25,22]) paal_blauw_y();
    translate([0,y - 25,22]) paal_blauw_y();
}

for (x = [-80, 80]) {
    translate([x+50,0,15]) paal_blauw_x();
    translate([x-50,0,15]) paal_blauw_x();
}





