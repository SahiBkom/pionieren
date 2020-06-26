module tube() {

s=7;



for(i=[0:s])

translate([i*30,25,-6])

rotate(a=90, v=[1,0,0])

cylinder(r=6,h=250);


for(i=[0:s])

translate([-25, -i*30,6])

rotate([90,90,90])

cylinder(r=6,h=250);


for(i=[1:s])

translate([-25, -i*30+15,6])

rotate([90,90,90])

cylinder(r=6,h=250);





for (h=[0:2]) {


for(i=[0,s])

translate([i*30,25, 18+ h*24])

rotate(a=90, v=[1,0,0])

cylinder(r=6,h=250);


for(i=[0,s])

translate([-25, -i*30,30 + h*24])

rotate([90,90,90])

cylinder(r=6,h=250);

}


color( "DodgerBlue", a=1.0 ) {


for (h=[0:1])

for(i=[0,s])

translate([i*30,-6, 18+ h*24 + 12])

rotate(a=90, v=[1,0,0])

cylinder(r=6,h=200);


for (h=[0:2])

for(i=[0,s])

translate([6, -i*30,30 + h*24 - 12])

rotate([90,90,90])

cylinder(r=6,h=200);

};



color( "BurlyWood", a=1.0 ) {


translate([-36, -100, -100])

cylinder(r=30,h=200);

translate([242, -100, -100])

cylinder(r=30,h=200);

translate([100, 36, -100])

cylinder(r=30,h=200);

}


translate([224, -200, -100])

cylinder(r=6,h=200);


translate([200, -224, -100])

cylinder(r=6,h=200);


translate([-12, -200, -100])

cylinder(r=6,h=200);


translate([12, -224, -100])

cylinder(r=6,h=200);


color( "Brown", a=0.5 ) {


for(i=[65,135])

translate([-50, -i,-18])

rotate([90,90,90])

cylinder(r=6,h=300);

}


}


tube();