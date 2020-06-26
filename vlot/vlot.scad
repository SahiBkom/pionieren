vat_x = 75;
vat_y = 75;


module paal_rood() {
    rotate([0,90,00])
    color("red") {
        cylinder(h=300, d=20, center=true);
    }
}

module paal_blauw() {
    rotate([90,0,00])
    color("blue") {
        cylinder(h=250, d=20, center=true);
    }
}


module vat_200l()  {
    rotate([0,90,00])
    color("DeepSkyBlue") {
        cylinder(h=92, d=58, center=true);
    }
}

module tafelblad() {
    color("Green") {
        cube([60,180,2], true);
    }
}

translate([vat_x,vat_y,0]) vat_200l();
translate([vat_x,-vat_y,0]) vat_200l();
translate([-vat_x,vat_y,0]) vat_200l();
translate([-vat_x,-vat_y,0]) vat_200l();

translate([0,vat_y + 30,25]) paal_rood();
translate([0,vat_y - 30,25]) paal_rood();
translate([0,-vat_y + 30,25]) paal_rood();
translate([0,-vat_y - 30,25]) paal_rood();

translate([vat_x+56,0,5]) paal_blauw();
translate([vat_x-56,0,5]) paal_blauw();
translate([-vat_x+56,0,5]) paal_blauw();
translate([-vat_x-56,0,5]) paal_blauw();
translate([0, 30, 36]) tafelblad();