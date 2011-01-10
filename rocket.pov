#include "colors.inc"
#include "textures.inc"

#declare winkel = clock*135;

#declare Engine =
union{
cone{<0,0,0>,0.5,<0,1.5,0>,0.25
      scale<1,1,0.7>  translate<0,0.5,0>
      texture{Candy_Cane}}
prism{ -0.01 ,0.01 , 4
      <0.0, 0.0>, < 0.8,  0.0>, < 0.0,1.5>, <0.0, 0.0>
      rotate<-90,0,0> translate<0,0.5,0>
      texture {pigment{color Red}
      finish {phong 1.0}}}
difference{
 cone{<0, 0.10,0>,0.28,<0,0.50,0>,0.10}
 cone{<0, 0.09,0>,0.17,<0,0.49,0>,0.09}
 translate<0.22,0,0> texture{Blood_Marble}
}

translate<0.25,0,0>}

//Hatch
#declare Hatch =
difference{
        cylinder{<0,2,0>,<0,4.5,0>,0.5 texture{Candy_Cane}}
        box{<-0.5,1.9,-0.4>,<0.5,4.6,0.5> rotate <0,-180,0>
                pigment{
                        image_map {png "images/mp3.png"} scale 0.6}}//color rgb <1, 1, 1>}
        //rotate <winkel,0,0>
        //translate<0,2-cos(winkel/180*pi)*2+0.5*clock,-sin(winkel/180*pi)*2+0.5*clock>    
}

//Rocket
#declare Rocket = 
union{
  
//Engines
object{Engine rotate<0,50,0> translate<0,0,0>}
object{Engine rotate<0,140,0> translate<0,0,0>}
object{Engine rotate<0,220,0> translate<0,0,0>}
object{Engine rotate<0,310,0> translate<0,0,0>}

//Body
union{
        difference{
                cylinder{<0,0,0>,<0,5,0>,0.5
                        translate<0,0.5,0>
                        texture{Candy_Cane}}
                box{<-0.3,2,0>,<0.3,4.5,0.5>
                        rotate <0,0,0> 
                        pigment{
                        image_map {png "images/mp1.png"} scale 0.6}}}
                        //color rgb <1, 1, 1>}}
        }

//Nose
cone{<0,0,0>,0.5,<0,1.5,0>,0.25 translate<0,5+0.5,0>
      texture{Polished_Chrome}}

sphere{<0,0,0>,0.25 scale <1,1.5,1>
       translate<0,5.00+1.50+0.50,0>
       texture{Candy_Cane}}

}