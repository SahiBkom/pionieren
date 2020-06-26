
color("RoyalBlue", 0.4)
translate([0, 0,70])
difference() {
cube([150, 150, 3], true);
cube([135, 135, 4], true);
}


color("FireBrick", 0.4)
translate([0, 0,74])
cube([145, 145, 3], true);


color("RoyalBlue", 0.4) {
translate([0, 0,-75])
cube([150, 150, 3], true);



translate([0,-75,0])
rotate([90,0,0])
cube([150, 150, 3], true);

translate([0,75,0])
rotate([90,0,0])
cube([150, 150, 3], true);
}

/*
color("RoyalBlue", 0.1) {
translate([-75,0,0])
rotate([90,0,90])
cube([150, 150, 3], true);

translate([75,0,0])
rotate([90,0,90])
cube([150, 150, 3], true);
}
*/


difference() {
union() {
for (a =[-1,1]) {

color("RoyalBlue", 0.4) 
translate([0,a*25,-25])
rotate([90,0,0])
cube([150, 100, 3], true);

color("RoyalBlue", 0.4) 
translate([0,a*45,-25])
rotate([90,0,0])
cube([150, 100, 3], true);

color("FireBrick", 0.4) 
translate([0,a*5,25])
rotate([90,0,0])
cube([125, 100, 3], true);

color("FireBrick", 0.4) 
translate([0,a*20,25])
rotate([90,0,0])
cube([125, 100, 3], true);

}
}

union() {
for (a =[-50:50:50]) {
translate([a,70,0])
rotate([90,0,0])
cylinder(140, 5, 5);
}
}
}

color("LimeGreen", 0.8) {
for (a =[-50:50:50]) {
translate([a,-50,0]) // -72
rotate([-90,0,0]) {
cylinder(50, 5, 4);
cylinder(3, 8, 8);
}
}


for (a =[-50:50:50]) {
translate([a,73,0]) // -72
rotate([90,0,0]) {
cylinder(50, 5, 4);
cylinder(3, 8, 8);
}
}
}

