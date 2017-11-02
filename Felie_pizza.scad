toleranta=1;//toleranta la desenare

//______________cu diferenta
module felie_pizza_diference(diametru,grosime,unghi_felie)
{
    
    difference(){
    cylinder(h=grosime,r=diametru/2);
   translate([-diametru/2-toleranta,-diametru/2-toleranta,-toleranta]) cube([diametru+2*toleranta, diametru/2+toleranta,grosime+2*toleranta]);       
  rotate([0,0,30]) translate([-diametru/2-toleranta,0,-toleranta]) cube([diametru+2*toleranta, diametru/2+toleranta,grosime+2*toleranta]);   
    }
}    
//end______________cu diferenta   
module felie_pizza_intersection(diametru,grosime,unghi_felie)
{
    
    intersection(){
        cylinder(h=grosime,r=diametru/2);
        translate([-diametru/2-toleranta,0,-toleranta]) cube([diametru+2*toleranta, diametru/2+toleranta,grosime+2*toleranta]);  
     rotate([0,0,-(90-unghi_felie)]) cube([diametru/2+toleranta, diametru/2+toleranta,grosime+2*toleranta]);      
        
        }
}  
//felie_pizza_diference(diametru=30,grosime=3,unghi_felie=30);
 felie_pizza_intersection(diametru=18,grosime=3,unghi_felie=30); 
