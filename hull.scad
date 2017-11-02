module placa_snowboard(grosime,raza,lungime)//astia din paranteza sunt parametrii pe care ii dau eu
{
cylinder(h=grosime,r=raza);

translate ([lungime-2*raza,0,0])cylinder(h=grosime,r=raza);
    
    translate([0,-raza,0])cube([lungime-2*raza,2*raza,grosime]);
}
//---------------
module placa_snowboard2(grosime,raza,lungime)//astia din paranteza sunt parametrii pe care ii dau eu
{
    hull(){
        cylinder(h=grosime,r=raza);

            translate ([lungime-2*raza,0,0])cylinder(h=2*grosime,r=raza);
     
    }
}
//------------

module podium(grosime,raza,lungime)//astia din paranteza sunt parametrii pe care ii dau eu
{
    hull(){
        cylinder(h=grosime,r=raza);

            translate ([lungime-2*raza,0,0])cylinder(h=2*grosime,r=raza);
     
        translate([(lungime-raza)/2,lungime-2*raza,0])
        cylinder(h=3*grosime,r=raza);
    }
}
//---------------
//placa_snowboard2(grosime=10,raza=20,lungime=100);
//placa_snowboard(grosime=10,raza=20,lungime=100);
podium(grosime=10,raza=20,lungime=100);