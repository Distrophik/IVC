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
#declare Cam1 =camera {angle 60
                       location  <0, 6 , -5>//-15+(clock*7.5)>
                       rotate <0, 0, 0>
                       look_at   <0 , 3 , 0>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<30, 30, 0> color rgb <1,1,1>}
//-------------------------------------------------------------


object{Rocket rotate <0,195,0>}
light_source{<0, 4.4, 0>
        color Gray75
        fade_distance 5
        fade_power 1 
        shadowless

}
object{Astronaut
        scale 0.2
        translate <0,2.6,0>}



//object{ball
//        translate<1,sin(20*clock)+1 ,20*clock>} //end of union
//--------------------------------------------------------- end