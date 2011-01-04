#include "colors.inc"
#include "textures.inc"

#declare Engine =
union{
cone{<0,0,0>,0.5,<0,1.5,0>,0.25
      scale<1,1,0.7>  translate<0,0.5,0>
      texture{Candy_Cane}}
prism{ -0.01 ,0.01 , 4
      <0.0, 0.0>, < 0.8,  0.0>, < 0.0,1.5>, <0.0, 0.0>
      rotate<-90,0,0> translate<0,0.5,0>
      texture {pigment{ color Red }                finish { phong 1.0}}}
difference{
 cone{<0, 0.10,0>,0.28,<0,0.50,0>,0.10}
 cone{<0, 0.09,0>,0.17,<0,0.49,0>,0.09}
 translate<0.22,0,0> texture{Blood_Marble}
 }

translate<0.25,0,0>} // all together somewhat excentric!

//------------ build the rocket -------------------------------
#declare Rocket =  union{  //-- 4 engines ---------------------
object{Engine rotate<0,  0,0> translate<0,0,0>}
object{Engine rotate<0,100,0> translate<0,0,0>}
object{Engine rotate<0,200,0> translate<0,0,0>}
object{Engine rotate<0,300,0> translate<0,0,0>}
//----- the body ----------------------------------------------
cylinder {<0,0,0>,<0,5,0>,0.5 translate<0,0.5,0>
 texture{Candy_Cane}}
cylinder {<0,0,0>,<0,5,0>,0.4 translate<0,0.5,0>
 color rgb <1, 1, 1>}

cone{<0,0,0>,0.5,<0,1.5,0>,0.25 translate<0,5+0.5,0>
      texture{Polished_Chrome}}
//-------- the nose on top of the rocket ----------------------
sphere{<0,0,0>,0.25 scale <1,1.5,1>
       translate<0,5.00+1.50+0.50,0>
       texture{Candy_Cane}}
}//--end of union ---------------------------------------------

