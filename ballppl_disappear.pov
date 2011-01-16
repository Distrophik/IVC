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
object{ball
        scale 0.3-clock*0.29     
        scale y*sin(20+clock*20)*exp(-clock*2)+2-clock
        translate <0, sin(20+clock*20)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.2-clock*0.19 
        scale y*sin(30+clock*30)*exp(-clock*2)+2-clock
        translate <0, sin(30+clock*30)*exp(-clock*2)+1-clock, 5>}    
object{ball
        scale 0.7-clock*0.69  
        scale y*sin(80+clock*80)*exp(-clock*2)+2-clock
        translate <0, sin(80+clock*80)*exp(-clock*2)+1-clock, 5>}                           
object{ball
        scale 0.25-clock*0.24  
        scale y*sin(20+clock*20)*exp(-clock*2)+2-clock
        translate <0, sin(20+clock*20)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.3-clock*0.29 
        scale y*sin(40+clock*40)*exp(-clock*2)+2-clock
        translate <0, sin(40+clock*40)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.8-clock*0.79     
        scale y*sin(10+clock*10)*exp(-clock*2)+2-clock
        translate <0, sin(10+clock*10)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.2-clock*0.19    
        scale y*sin(50+clock*50)*exp(-clock*2)+2-clock
        translate <0, sin(50+clock*50)*exp(-clock*2)+1-clock, 5>}    
object{ball
        scale 0.1-clock*0.09    
        scale y*sin(90+clock*90)*exp(-clock*2)+2-clock
        translate <0, sin(90+clock*90)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.6-clock*0.59    
        scale y*sin(40+clock*40)*exp(-clock*2)+2-clock
        translate <0, sin(40+clock*40)*exp(-clock*2)+1-clock, 5>}
object{ball
        scale 0.4-clock*0.39      
        scale y*sin(40+clock*40)*exp(-clock*2)+2-clock
        translate <0, sin(40+clock*40)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.7-clock*0.69              
        scale y*sin(20+clock*20)*exp(-clock*2)+2-clock
        translate <0, sin(20+clock*20)*exp(-clock*2)+1-clock, 5>}
object{ball
        scale 0.5-clock*0.49    
        scale y*sin(70+clock*70)*exp(-clock*2)+2-clock
        translate <0, sin(70+clock*70)*exp(-clock*2)+1-clock, 5>}
object{ball
        scale 0.25-clock*0.24   
        scale y*sin(30+clock*30)*exp(-clock*2)+2-clock
        translate <0, sin(30+clock*30)*exp(-clock*2)+1-clock, 5>}   
object{ball
        scale 0.35-clock*0.34   
        scale y*sin(50+clock*50)*exp(-clock*2)+2-clock
        translate <0, sin(50+clock*50)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.9-clock*0.89    
        scale y*sin(80+clock*80)*exp(-clock*2)+2-clock
        translate <0, sin(80+clock*80)*exp(-clock*2)+1-clock, 5>}    
object{ball
        scale 0.65-clock*0.64  
        scale y*sin(10+clock*10)*exp(-clock*2)+2-clock
        translate <0, sin(10+clock*10)*exp(-clock*2)+1-clock, 5>}                           
object{ball
        scale 0.3-clock*0.29    
        scale y*sin(30+clock*30)*exp(-clock*2)+2-clock
        translate <0, sin(30+clock*30)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.55-clock*0.54  
        scale y*sin(50+clock*50)*exp(-clock*2)+2-clock
        translate <0, sin(50+clock*50)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.35-clock*0.34   
        scale y*sin(20+clock*20)*exp(-clock*2)+2-clock
        translate <0, sin(20+clock*20)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.45-clock*0.44
        scale y*sin(80+clock*80)*exp(-clock*2)+2-clock
        translate <0, sin(80+clock*80)*exp(-clock*2)+1-clock, 5>}    
object{ball
        scale 0.8-clock*0.79    
        scale y*sin(60+clock*60)*exp(-clock*2)+2-clock
        translate <0, sin(60+clock*60)*exp(-clock*2)+1-clock, 5>} 
object{ball
        scale 0.3-clock*0.29    
        scale y*sin(70+clock*70)*exp(-clock*2)+2-clock
        translate <0, sin(70+clock*70)*exp(-clock*2)+1-clock, 5>}