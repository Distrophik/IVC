#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "sky.pov"
#include "stones.inc"
#include "sky.pov"
#include "ball.pov"
#include "astronaut.pov"


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 60
                       location  <14.0 , 8.23 , 20.0*clock>
                       rotate <0, 20 * clock, 0>
                       look_at   <0.0 , 5.0 , 0.0>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<10, 10, 10> color rgb <1,1,1>}
//-------------------------------------------------------------


object{Rocket}

object{Astronaut
	translate <1,1,1>}

//object{ball
//        translate<1,sin(20*clock)+1 ,20*clock>} //end of union
//--------------------------------------------------------- end

