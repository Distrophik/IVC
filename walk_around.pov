#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut_moving.pov"
global_settings { assumed_gamma 1 }


//camera
#declare Cam1 =camera {angle 60
                       location  <0, 1, 2>
                       look_at <0, 0.5, 10+clock*10>}
camera{Cam1}

//ground
plane{ <0,1,0>, 0 
      texture{T_Stone24}}

//light source
light_source{<100, 50, 0> color rgb <1,1,1>}

//ligh in the rocket
light_source{<0, 4.4, 0>
        color Gray75
        fade_distance 5
        fade_power 1 
        shadowless
}   

//rocket      
union{
        object{Rocket}
        object{Hatch 
                rotate <135,0,0> translate<0,2-cos(135/180*pi)*2+0.5,-sin(135/180*pi)*2+0.5>}
}
 
//astronaut
object{Astronaut_m scale 0.2
        rotate y*180 
        translate <0, 0.42, 2.5+clock*17.5>}         
