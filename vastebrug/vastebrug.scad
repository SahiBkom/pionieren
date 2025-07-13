
module paal_piket() {
    color("Khaki") cylinder(h=160, d=8);
}

module paal_rood() {
    color("Red") cylinder(h=250, d=8);
}

module paal_blauw() {
    color("Blue") cylinder(h=300, d=8);
}

module paal_blanco() {
    color("Khaki") cylinder(h=400, d=10);
}

module paal_geel() {
    color("Yellow") cylinder(h=510, d=12);
}

module paal_wit() {
    color("Snow") cylinder(h=600, d=12);
}


module paalen() {
    translate([0,0,0]) paal_piket();
    translate([25,0,0]) paal_rood();
    translate([50,0,0]) paal_blauw();
    translate([75,0,0]) paal_blanco();
    translate([100,0,0]) paal_geel();
    translate([125,0,0]) paal_wit();
}


module ladder () {

    translate([100,0,0])
    rotate([90, 0,0 ])
    paal_geel();

    translate([0,-110,0])
    rotate([90, 0,0 ])
    paal_blanco();

    translate([-100,0,0])
    rotate([90, 0,0 ])
    paal_geel();

    for (i = [0:6]) {
        translate([-125,-490 + i * 60,10])
        rotate([0, 90, 0 ])
        paal_rood();
    }
}



module toren () {
    translate([0,-125,-110])
    rotate([-90, 0,0 ])
    ladder();

    translate([0,125,-110])
    rotate([-90, 0,-180 ])
    ladder();
    
    for (i = [0:3]) {
        translate([-110,-150,50 + i * 100])
        rotate([0, 90, 90 ])
        paal_blauw();
        
        translate([110,-150,50 + i * 100])
        rotate([0, 90, 90 ])
        paal_blauw();
    }
}

// ladder();
// toren();

module totaal() {
    rotate([0, 0, 90])
    translate([0, 0, 300])
    brug();
    
    translate([350,0,0])
    toren();

    translate([-350,0,0])
    toren();
}


totaal();

module brug() {

    for (i = [-25,25]) {
        translate([i, 300, 15])
        rotate([90, 0, 0])
        paal_wit();
        
        translate([i, 255, 65])
        rotate([90, 0, 0])
        paal_geel();
        
        translate([i, 300, 115])
        rotate([90, 0, 0])
        paal_wit();
    }


    for (i = [-225:90:225]) {
        translate([-125,-i-3, 5])
        rotate([0, 90, 0])
        paal_rood();
        
        translate([-35, -i+5, 0])
        paal_piket();
        
        translate([35, -i+5, 0])
        paal_piket();
        
        
        translate([102, i-10, 0])
        rotate([0, -30, 0])
        paal_piket();
        
        translate([-102, i-10, 0])
        rotate([0, 30, 0])
        paal_piket();
    }
    
    for (i = [-45,45]) {
        translate([i, 0, 0])
        rotate([60, 0, 0])
        paal_blauw();

        translate([i, 0, 0])
        rotate([-60, 0, 0])
        paal_blauw();    
    }
   
}

