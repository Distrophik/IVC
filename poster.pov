#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut_p.pov"
#include "smoke.pov"
global_settings { assumed_gamma 1 }


//camera
#declare Cam1 =camera {angle 45
                       location  <0, 1, 15>                       
                       look_at <0, 0, 0>}
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
        object{Smoke scale 2.5 translate <0.7, 2, 0.3>}       
        rotate <0, 0, 140>
        translate <0, 4, 0>         
}
 
//astronaut
object{Astronaut scale 0.2        
        rotate <0, 180, 135>
        translate <1, 1, 10>}

object{ball
        translate <-4.5, 0, 0>}
object{ball     
        scale 0.3
        translate <-2, 0, 3>}
object{ball   
        scale 3
        translate <3, 0, 9>
        texture {Lightning2}}
object{ball   
        scale 2
        translate <-2, 0, 15.5>}                                