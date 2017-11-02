module pahar_sampanie(raza_baza,grosime_baza,raza_picior,inaltime_picior,raza_cupa,grosime_perete_cupa)//aici iti definesti paharul
{
    baza_pahar(raza_baza,grosime_baza);
        translate([0,0,grosime_baza])
    picior_pahar(raza_picior,inaltime_picior);
        translate([0,0,grosime_baza+inaltime_picior+raza_cupa])
    cupa(raza_cupa,grosime_perete_cupa);

}
//----------------------------
module baza_pahar(raza_baza,grosime_baza)//definire baza pahar
{
 cylinder(h=grosime_baza,r=raza_baza);
}
//---------------
module picior_pahar(raza_picior,inaltime_picior)
{
  cylinder(r=raza_picior,h=inaltime_picior);  
}
//--------------
module cupa(raza_cupa,grosime_perete_cupa)
{
  difference(){  
    sphere(r=raza_cupa);
    translate([-raza_cupa,-raza_cupa,0])cube([2*raza_cupa,2*raza_cupa,raza_cupa]); 
     sphere(r=raza_cupa-grosime_perete_cupa); 
  }
}
//-----------------
module pahare_in_sir(nr_pahare)
{
for (i=[0:9])//asta iti da numarul de pahare
    translate([i*(50*2+5),0,0])pahar_sampanie(raza_baza=40,grosime_baza=3,raza_picior=2,inaltime_picior=100,raza_cupa=50,grosime_perete_cupa=2);//i-ul de dupa translate si functia aia iti da distanta dintre pahare
}
//-------------

module pahare_in_matrice(nr_pahare_x,nr_pahare_y)
{
for (i=[0:nr_pahare_x-1])//asta iti da numarul de pahare
    for(j=[0:nr_pahare_y-1])
    translate([i*(50*2+5),j*(50*2+5),0])pahar_sampanie(raza_baza=40,grosime_baza=3,raza_picior=2,inaltime_picior=100,raza_cupa=50,grosime_perete_cupa=2);//i-ul de dupa translate si functia aia iti da distanta dintre pahar
}
//-------------
//pahare_in_sir(10);
pahare_in_matrice(nr_pahare_x=5,nr_pahare_y=7);
//-----------
