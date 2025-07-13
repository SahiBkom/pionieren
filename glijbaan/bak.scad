vat_x = 75;
vat_y = 75;


module paal_rood() {
    rotate([0,90,00])
    color("red") {
        cylinder(h=250, d=20, center=true);
    }
}

module paal_blauw() {
    color("blue") {
        cylinder(h=300, d=20, center=true);
    }
}


module vat_200l()  {
    rotate([0,90,00])
    color("DeepSkyBlue") {
        cylinder(h=92, d=58, center=true);
    }
}

module tafel() {
    color("Green") {
        cube([60,180,2], true);
    }
}

module bank_a() {
    cube([300,2.5,40], true);
    
    for (x = [-140,140]) {
        translate([x,20,0])
        rotate([0,0,90])
        cube([40,5,40], true);
    }
}

// helling 5%
color("PaleGoldenrod", 0.1) {
    rotate([0,5,0])
    cube([2000,250,1], true);
}

// water 5%
color("Blue", 0.5) {
    translate([-120,0,40])
    rotate([0,0,0])
    cube([600,180,1], true);
}

// paalen zijkent + touw
for (x = [-150, -30, 30, 150]) {
    for (y = [-100,100]) {
        translate([x,y,50 - (x/10)])
        paal_blauw();
    }
    
    // touw/spanband
    color("Green") {
        translate([x,1,180 - (x/10)])
        rotate([0,90,0])
        cube([5,180,5], true);
    }
}


for (y = [-60,60]) {
    translate([190,y,50])
    paal_blauw();
}


translate([180,0,10])
rotate([0,90,00])
tafel();

translate([90,90,25])
rotate([90,95,00])
tafel();

translate([90,-90,25])
rotate([90,95,00])
tafel();


translate([-90,90,40])
rotate([90,95,00])
tafel();

translate([-90,-90,40])
rotate([90,95,00])
tafel();


translate([-340,90,50])
rotate([0,5,0])
bank_a();

translate([-340,-90,50])
rotate([180,5,0])
bank_a();