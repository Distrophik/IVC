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
#declare Cam1 =camera {angle 60+clock*30                          
                       location <0, 8, 14+clock*6>
                       look_at <0, 2.6, clock*5>}
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
        scale 0.25
        scale y*sin(80-clock*40)+2
        translate <0, sin(80-clock*40)+1, 25-clock*20>}
object{ball
        scale 0.5              
        scale y*sin(100-clock*50)+2
        translate <-5+clock*5, sin(100-clock*50)+1, 24-clock*19>}   
object{ball
        scale 0.3     
        scale y*sin(40-clock*20)+2
        translate <5-clock*5, sin(40-clock*20)+1, 24-clock*19>} 
object{ball
        scale 0.2 
        scale y*sin(60-clock*30)+2
        translate <15-clock*15, sin(60-clock*30)+1, 20-clock*15>}    
object{ball
        scale 0.7  
        scale y*sin(160-clock*80)+2
        translate <-15+clock*15, sin(160-clock*80)+1, 20-clock*15>}                           
object{ball
        scale 0.25  
        scale y*sin(40-clock*20)+2
        translate <20-clock*20, sin(40-clock*20)+1, 15-clock*10>} 
object{ball
        scale 0.3 
        scale y*sin(80-clock*40)+2
        translate <-20+clock*20, sin(80-clock*40)+1, 15-clock*10>} 
object{ball
        scale 0.8     
        scale y*sin(20-clock*10)+2
        translate <25-clock*25, sin(20-clock*10)+1, 10-clock*5>} 
object{ball
        scale 0.2    
        scale y*sin(100-clock*50)+2
        translate <-25+clock*25, sin(100-clock*50)+1, 10-clock*5>}    
object{ball
        scale 0.1    
        scale y*sin(180-clock*90)+2
        translate <30-clock*30, sin(180-clock*90)+1, 5>} 
object{ball
        scale 0.6    
        scale y*sin(80-clock*40)+2
        translate <-30+clock*30, sin(80-clock*40)+1, 5>}
object{ball
        scale 0.4      
        scale y*sin(80-clock*40)+2
        translate <30-clock*30, sin(80-clock*40)+1, clock*5>} 
object{ball
        scale 0.7              
        scale y*sin(40-clock*20)+2
        translate <-30+clock*30, sin(40-clock*20)+1, clock*5>}
object{ball
        scale 0.5    
        scale y*sin(140-clock*70)+2
        translate <0, sin(140-clock*70)+1, -25+clock*30>}
object{ball
        scale 0.25   
        scale y*sin(60-clock*30)+2
        translate <-5+clock*5, sin(60-clock*30)+1, -24+clock*29>}   
object{ball
        scale 0.35   
        scale y*sin(100-clock*50)+2
        translate <5-clock*5, sin(100-clock*50)+1, -24+clock*29>} 
object{ball
        scale 0.9    
        scale y*sin(160-clock*80)+2
        translate <15-clock*15, sin(160-clock*80)+1, -20+clock*25>}    
object{ball
        scale 0.65   
        scale y*sin(20-clock*10)+2
        translate <-15+clock*15, sin(20-clock*10)+1, -20+clock*25>}                           
object{ball
        scale 0.3    
        scale y*sin(60-clock*30)+2
        translate <20-clock*20, sin(60-clock*30)+1, -15+clock*20>} 
object{ball
        scale 0.55   
        scale y*sin(100-clock*50)+2
        translate <-20+clock*20, sin(100-clock*50)+1, -15+clock*20>} 
object{ball
        scale 0.35   
        scale y*sin(40-clock*20)+2
        translate <25-clock*25, sin(40-clock*20)+1, -10+clock*15>} 
object{ball
        scale 0.45    
        scale y*sin(160-clock*80)+2
        translate <-25+clock*25, sin(160-clock*80)+1, -10+clock*15>}    
object{ball
        scale 0.8    
        scale y*sin(120-clock*60)+2
        translate <30-clock*30, sin(120-clock*60)+1, -5+clock*10>} 
object{ball
        scale 0.3    
        scale y*sin(140-clock*70)+2
        translate <-30+clock*30, sin(140-clock*70)+1, -5+clock*10>}