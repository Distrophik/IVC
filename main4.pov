#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut.pov" 
global_settings { assumed_gamma 1 }


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 90
                       location  <0, 10 , 35>//-15+(clock*7.5)>
                       rotate <0, 0, 0>
                       look_at   <0 , 0, 0>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<100, 50, 0> color rgb <1,1,1>}
//-------------------------------------------------------------



union{
        object{Rocket}
        object{Hatch rotate <135,0,0> translate<0,2-cos(135/180*pi)*2+0.5,-sin(135/180*pi)*2+0.5>}

}         

object{Astronaut
        scale 0.2
        translate <0,0.42,20>}
           
#if(clock <= 1)
           
object{ball
        scale 0.25
        scale y*sin(40)+2
        translate <0, -3+3*clock, 25>}
object{ball
        scale 0.5
        scale y*sin(50)+2
        translate <-5, -5+5*clock, 24>}   
object{ball
        scale 0.3
        scale y*sin(20)+2
        translate <5, -3.5+3.5*clock, 24>} 
object{ball
        scale 0.2
        scale y*sin(30)+2
        translate <15, -10+10*clock, 20>}    
object{ball
        scale 0.7
        scale y*sin(80)+2
        translate <-15, -9+9*clock, 20>}                           
object{ball
        scale 0.25
        scale y*sin(20)+2
        translate <20, -5+5*clock, 15>} 
object{ball
        scale 0.3
        scale y*sin(40)+2
        translate <-20, -2+2*clock, 15>} 
object{ball
        scale 0.8
        scale y*sin(10)+2
        translate <25, -7+7*clock, 10>} 
object{ball
        scale 0.2
        scale y*sin(50)+2
        translate <-25, -3+3*clock, 10>}    
object{ball
        scale 0.1
        scale y*sin(90)+2
        translate <30, -4.5+4.5*clock, 5>} 
object{ball
        scale 0.6
        scale y*sin(40)+2
        translate <-30, -8+8*clock, 5>}
object{ball
        scale 0.4
        scale y*sin(40)+2
        translate <30, -6+6*clock, 0>} 
object{ball
        scale 0.7
        scale y*sin(20)+2
        translate <-30, -5+5*clock, 0>}
object{ball
        scale 0.5
        scale y*sin(70)+2
        translate <0, -4+4*clock, -25>}
object{ball
        scale 0.25
        scale y*sin(30)+2
        translate <-5, -10+10*clock, -24>}   
object{ball
        scale 0.35
        scale y*sin(50)+2
        translate <5, -4+4*clock, -24>} 
object{ball
        scale 0.9
        scale y*sin(80)+2
        translate <15, -12+12*clock, -20>}    
object{ball
        scale 0.65
        scale y*sin(10)+2
        translate <-15, -10+10*clock, -20>}                           
object{ball
        scale 0.3
        scale y*sin(30)+2
        translate <20, -5+5*clock, -15>} 
object{ball
        scale 0.55
        scale y*sin(50)+2
        translate <-20, -5.5+5.5*clock, -15>} 
object{ball
        scale 0.35
        scale y*sin(20)+2
        translate <25, -3+3*clock, -10>} 
object{ball
        scale 0.45
        scale y*sin(80)+2
        translate <-25, -8+8*clock, -10>}    
object{ball
        scale 0.8
        scale y*sin(60)+2
        translate <30, -5+5*clock, -5>} 
object{ball
        scale 0.3
        scale y*sin(70)+2
        translate <-30, -10+10*clock, -5>}                                             
                                          
#else
object{ball
        scale 0.25
        scale y*sin(40*(clock-1))+2
        translate <0, 0, 25>}
object{ball
        scale 0.5              
        scale y*sin(50*(clock-1))+2
        translate <-5, 0, 24>}   
object{ball
        scale 0.3     
        scale y*sin(20*(clock-1))+2
        translate <5, 0, 24>} 
object{ball
        scale 0.2 
        scale y*sin(30*(clock-1))+2
        translate <15, 0, 20>}    
object{ball
        scale 0.7  
        scale y*sin(80*(clock-1))+2
        translate <-15, 0, 20>}                           
object{ball
        scale 0.25  
        scale y*sin(20*(clock-1))+2
        translate <20, 0, 15>} 
object{ball
        scale 0.3 
        scale y*sin(40*(clock-1))+2
        translate <-20, 0, 15>} 
object{ball
        scale 0.8     
        scale y*sin(10*(clock-1))+2
        translate <25, 0, 10>} 
object{ball
        scale 0.2    
        scale y*sin(50*(clock-1))+2
        translate <-25, 0, 10>}    
object{ball
        scale 0.1    
        scale y*sin(90*(clock-1))+2
        translate <30, 0, 5>} 
object{ball
        scale 0.6    
        scale y*sin(40*(clock-1))+2
        translate <-30, 0, 5>}
object{ball
        scale 0.4      
        scale y*sin(40*(clock-1))+2
        translate <30, 0, 0>} 
object{ball
        scale 0.7              
        scale y*sin(20*(clock-1))+2
        translate <-30, 0, 0>}
object{ball
        scale 0.5    
        scale y*sin(70*(clock-1))+2
        translate <0, 0, -25>}
object{ball
        scale 0.25   
        scale y*sin(30*(clock-1))+2
        translate <-5, 0, -24>}   
object{ball
        scale 0.35   
        scale y*sin(50*(clock-1))+2
        translate <5, 0, -24>} 
object{ball
        scale 0.9    
        scale y*sin(80*(clock-1))+2
        translate <15, 0, -20>}    
object{ball
        scale 0.65   
        scale y*sin(10*(clock-1))+2
        translate <-15, 0, -20>}                           
object{ball
        scale 0.3    
        scale y*sin(30*(clock-1))+2
        translate <20, 0, -15>} 
object{ball
        scale 0.55   
        scale y*sin(50*(clock-1))+2
        translate <-20, 0, -15>} 
object{ball
        scale 0.35   
        scale y*sin(20*(clock-1))+2
        translate <25, 0, -10>} 
object{ball
        scale 0.45    
        scale y*sin(80*(clock-1))+2
        translate <-25, 0, -10>}    
object{ball
        scale 0.8    
        scale y*sin(60*(clock-1))+2
        translate <30, 0, -5>} 
object{ball
        scale 0.3    
        scale y*sin(70*(clock-1))+2
        translate <-30, 0, -5>}
#end
