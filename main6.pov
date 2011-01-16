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
#declare Cam1 =camera {angle 90-clock*30                          
                       location <0, 8, 20>
                       look_at <0, 2.6, 5>}
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
        object{Hatch}

}         

//ball people
object{ball
        scale 0.25-clock*0.24
        scale y*sin(40+clock*40)*exp(-clock*2)+2-clock
        translate <0, sin(40+clock*40)*exp(-clock*2)+1-clock, 5>}
object{ball
        scale 0.5-clock*0.49              
        scale y*sin(50+clock*50)*exp(-clock*2)+2-clock
        translate <0, sin(50+clock*50)*exp(-clock*2)+1-clock, 5>}   
