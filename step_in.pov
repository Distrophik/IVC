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
                       #if(clock<=1)
                       location <0, 6, 10>
                       look_at <0, 0, 0>
                       #else   
                       location <0, 6+(clock-1)*2, 10+(clock-1)*4>
                       look_at <0, (clock-1)*2.6, 0>
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
                rotate <135,0,0> translate<0,2-cos(135/180*pi)*2+0.5,-sin(135/180*pi)*2+0.5>
                #else  
                rotate <135-winkel/2,0,0> translate<0,2-cos((135-winkel/2)/180*pi)*2,-sin((135-winkel/2)/180*pi)*2>
                #end}

}         

//astronaut
object{Astronaut_m
        scale 0.2
        #if(clock<=1)
        translate <0, 0.42+2.18*clock, 2.5-2.5*clock>
        #else
        translate <0, 2.6, 0>
        #end}

//ball people
object{ball
        scale 0.25
        scale y*sin(40+40*clock)+2
        translate <0, 0, 25>}
object{ball
        scale 0.5              
        scale y*sin(50+50*clock)+2
        translate <-5, 0, 24>}   
object{ball
        scale 0.3     
        scale y*sin(20+20*clock)+2
        translate <5, 0, 24>} 
object{ball
        scale 0.2 
        scale y*sin(30+30*clock)+2
        translate <15, 0, 20>}    
object{ball
        scale 0.7  
        scale y*sin(80+80*clock)+2
        translate <-15, 0, 20>}                           
object{ball
        scale 0.25  
        scale y*sin(20+20*clock)+2
        translate <20, 0, 15>} 
object{ball
        scale 0.3 
        scale y*sin(40+40*clock)+2
        translate <-20, 0, 15>} 
object{ball
        scale 0.8     
        scale y*sin(10+10*clock)+2
        translate <25, 0, 10>} 
object{ball
        scale 0.2    
        scale y*sin(50+50*clock)+2
        translate <-25, 0, 10>}    
object{ball
        scale 0.1    
        scale y*sin(90+90*clock)+2
        translate <30, 0, 5>} 
object{ball
        scale 0.6    
        scale y*sin(40+40*clock)+2
        translate <-30, 0, 5>}
object{ball
        scale 0.4      
        scale y*sin(40+40*clock)+2
        translate <30, 0, 0>} 
object{ball
        scale 0.7              
        scale y*sin(20+20*clock)+2
        translate <-30, 0, 0>}
object{ball
        scale 0.5    
        scale y*sin(70+70*clock)+2
        translate <0, 0, -25>}
object{ball
        scale 0.25   
        scale y*sin(30+30*clock)+2
        translate <-5, 0, -24>}   
object{ball
        scale 0.35   
        scale y*sin(50+50*clock)+2
        translate <5, 0, -24>} 
object{ball
        scale 0.9    
        scale y*sin(80+80*clock)+2
        translate <15, 0, -20>}    
object{ball
        scale 0.65   
        scale y*sin(10+10*clock)+2
        translate <-15, 0, -20>}                           
object{ball
        scale 0.3    
        scale y*sin(30+30*clock)+2
        translate <20, 0, -15>} 
object{ball
        scale 0.55   
        scale y*sin(50+50*clock)+2
        translate <-20, 0, -15>} 
object{ball
        scale 0.35   
        scale y*sin(20+20*clock)+2
        translate <25, 0, -10>} 
object{ball
        scale 0.45    
        scale y*sin(80+80*clock)+2
        translate <-25, 0, -10>}    
object{ball
        scale 0.8    
        scale y*sin(60+60*clock)+2
        translate <30, 0, -5>} 
object{ball
        scale 0.3    
        scale y*sin(70+70*clock)+2
        translate <-30, 0, -5>}