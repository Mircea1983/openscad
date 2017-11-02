module bol_supa(raza_baza,grosime_baza,raza_picior,raza_bol,grosime_perete_bol)
{
    baza_bol(raza_baza,grosime_baza);
        translate([0,0,grosime_baza])
    picior_bol(raza_picior,inaltime_picior);
        translate([0,0,grosime_baza+inaltime_picior+raza_bol])
    bol(raza_bol,grosime_perete_bol);

}
//----------------------------
module baza_bol(raza_baza,grosime_baza)
{
 cylinder(h=grosime_baza,r=raza_baza);
}
//---------------
module picior_bol(raza_picior,inaltime_picior)
{
  cylinder(r=raza_picior,h=inaltime_picior);  
}
//--------------
module bol(raza_bol,grosime_perete_bol)
{
  difference(){  
    sphere(r=raza_bol);
    translate([-raza_bol,-raza_bol,0])cube([2*raza_bol,2*raza_bol,raza_bol]); 
     sphere(r=raza_bol-grosime_perete_bol); 
  }
}
//-----------------

bol_supa(raza_baza=17,grosime_baza=3.7,raza_picior=2,inaltime_picior=-4,raza_bol=50,grosime_perete_bol=2);