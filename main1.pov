#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut.pov"
global_settings { assumed_gamma 1 }


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 90
                       location  <15, 5 , 15>
                     //  rotate <0, 0, 0>
                       look_at   <0 , 3 , 3>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<10, 10, 10> color rgb <1,1,1>}
//-------------------------------------------------------------

union{
        object{Rocket}
        object{Hatch rotate <winkel,0,0> translate<0,2-cos(winkel/180*pi)*2+0.5*clock,-sin(winkel/180*pi)*2+0.5*clock>}}


object{Astronaut
	scale 0.2
	translate <0, 0.42, 15-(12*clock)>}
	   
object{ball
        scale 0.25
        scale y*sin(40*clock)+2
        translate <0, sin(40*clock)+1, 20-(17*clock)>}	

//object{ball
//        translate<1,sin(20*clock)+1 ,20*clock>} //end of union
//--------------------------------------------------------- end

