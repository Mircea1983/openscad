module piulita()
{
    difference(){
        cylinder(h = 4, r = 10, $fn = 6);
    
        translate ([0, 0, -1]) cylinder(h = 6, r = 2, $fn = 26);
    }
}

color ("red") piulita();
color ("yellow") translate ([25, 0, 0]) piulita();

color("blue") translate ([50, 0, 0]) rotate([90, 0, 0]) piulita();