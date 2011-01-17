#include "colors.inc"
#include "textures.inc"
#include "rocket_burned.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "smoke.pov"
global_settings { assumed_gamma 1 }

#declare TextureList = array[2]{
        texture {Lightning1},
        texture {Lightning2}}                                  
                                  
//camera
#declare Cam1 =camera {angle 60
                        location <0, 10-clock, 21>
                        look_at <0, 5, 0>}
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
        object{Smoke translate <0, 0, 0> scale 2}          
        #if(clock>=1.5)
        rotate <0, 0, 180*(clock-1.5)>
        translate <0, (clock-1.5), 0>         
        #end                    
}         

//ball people
object{ball                
        #if(clock<=1)
        translate <0, 0, 0>
        scale (5+sin(200)+0.5)-(4.61*clock)
        #if(mod((floor(clock*10)),2)=0)
        texture{TextureList[0]}
        #else
        texture{TextureList[1]}
        #end
        #else
        translate <0, -10, 0>
        #end
}
