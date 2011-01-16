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
                       location  <0, 3.1, 0.3>
                       #if(clock<=1)
                       look_at <0, 2.5, 10-(clock*9.5)>
                       #else
                       look_at <0, 2.5, 0.5+(clock-1)*0.15>
                       #end}
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
        #if(clock<=1)
        rotate <winkel,0,0> translate<0,2-cos(winkel/180*pi)*2+0.5*clock,-sin(winkel/180*pi)*2+0.5*clock>
        #else
        rotate <135,0,0> translate<0,2-cos(135/180*pi)*2+0.5,-sin(135/180*pi)*2+0.5>
        #end}
}
 
//astronaut
object{Astronaut_m scale 0.2
        rotate y*180 
        #if(clock>1)
        rotate<45-(clock-1)*45, 0, 0>
        translate <0, 2.87-(2.45*(clock-1)), (clock-1)*2.5>
        #else
        translate <0, 2.6, 0>
        #end}