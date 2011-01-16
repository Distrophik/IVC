#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut.pov" 
#include "astronaut_moving.pov"
global_settings { assumed_gamma 1 }


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 40
                       location  <0, 1 , -2>//-15+(clock*7.5)>
                       rotate <0, 50, 0>
                       look_at   <0 , 0.5 , 0>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<30, 30, 0> color rgb <1,1,1>}
//-------------------------------------------------------------




//object{Astronaut
//        scale 0.2
//        translate <0,0.42,0>}
object{Astronaut_m
        scale 0.2
        translate <0,0.42,0>}