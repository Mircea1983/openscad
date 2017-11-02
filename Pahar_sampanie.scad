module pahar_sampanie(raza_baza,grosime_baza,raza_picior,inaltime_picior,raza_cupa, grosime_perete_cupa)
{
    baza_pahar(raza_baza,grosime_baza);
    translate([0,0,grosime_baza]) picior_pahar(raza_picior,inaltime_picior);
    translate([0,0,grosime_baza+inaltime_picior+raza_cupa]) cupa(raza_cupa, grosime_perete_cupa);
}//end pahar_sampanie

//------------------------------

module baza_pahar(raza_baza,grosime_baza)
{
    cylinder(h=grosime_baza,r=raza_baza);
}//end baza_pahar

//------------------------------

module picior_pahar(raza_picior,inaltime_picior)
{
    linear_extrude(height = inaltime_picior, twist = 180,slices=100) square([2*raza_picior,2*raza_picior],center=true);
    //cylinder(h=inaltime_picior,r=raza_picior,$fn=4);
}//end picior_pahar

//------------------------------

module cupa(raza_cupa, grosime_perete_cupa)
{ 
    difference(){
    sphere(r=raza_cupa);
    translate([-raza_cupa,-raza_cupa]) cube([2*raza_cupa,2*raza_cupa,raza_cupa]);
    sphere(r=raza_cupa-grosime_perete_cupa);
    }
}//end cupa
//------------------------------


module pahare_sir(numar_pahare)
{    
for(i=[0:numar_pahare-1])
        translate([i*(50*2 + 3),0]) pahar_sampanie(raza_baza=40,grosime_baza=3,raza_picior=2,inaltime_picior=100,raza_cupa=50,            grosime_perete_cupa=2);

    }
module pahare_matrice(numar_pahare_x,numar_pahare_y)
{ 
for(i=[0:numar_pahare_y-1])   
    translate([0,i*(50*2 + 3),0]) pahare_sir(numar_pahare_x);

    }
     
    //-------------
    module pahare_pe_cerc(nr_pahare, raza_cerc)
    {
        pas=360/nr_pahare;
        echo(pas=pas);
        echo(nr_pahare = nr_pahare);
        echo(raza_cerc = raza_cerc);
        for(i = [0 : pas:360 - 1])
        rotate([0,0,i]) 
        translate ([raza_cerc,0,0])
        pahar_sampanie(raza_baza=40,grosime_baza=3,raza_picior=2,inaltime_picior=100,raza_cupa=50,grosime_perete_cupa=2);
    }
    pahare_pe_cerc(nr_pahare=10, raza_cerc=200);