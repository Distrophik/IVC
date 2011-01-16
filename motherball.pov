#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut_moving.pov" 
global_settings { assumed_gamma 1 }

#declare TextureList = array[2]{
        texture {Lightning1},
        texture {Lightning2}}


//camera
#declare Cam1 =camera {angle 60
                        #if(clock<=1)                          
                        location <0, 8, 20-clock*5>
                        look_at <0, 2.6+clock*2.4, 5-clock*5>
                        #else
                        location <0, 8+1*clock, 15+clock*3>
                        look_at <0, 5, 0>
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
        object{Hatch}

}         

//ball people
object{ball         
        #if(clock<=1)
        scale 5
        translate <0, -10+clock*10, 0>
        #else
        translate <0, 0, 0>
        scale 5+sin(10*clock)+0.5
        #if(mod((floor(clock*10)),2)=0)
        texture{TextureList[0]}
        #else
        texture{TextureList[1]}
        #end
        #end}
