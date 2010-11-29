#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "sky.pov"
#include "stones.pov"


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 60
                       location  <14.0 , 8.23 , 10.0*clock>
                       rotate <0, 10 * clock, 0>
                       look_at   <0.0 , 2.0 , 0.0>}
camera{Cam1}
//Background
plane{ -x, 50 texture{Starfield}}
// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<10, 10, 10> color rgb <1,1,1>}
//-------------------------------------------------------------


object{Rocket}
       //rotate<30*clock 0> translate<1,2.0*clock,1.0*clock>} //end of union
//--------------------------------------------------------- end

