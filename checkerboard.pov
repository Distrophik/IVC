#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "Rocket.pov"

// camera -----------------------------------------------------
#declare Cam1 =camera {angle 60
                       location  <14.0 , 8.23 , 10.0*clock>
                       //right     x*image_width/image_height
                       look_at   <0.0 , 2.0 , 0.0>}
camera{Cam1}
//Background
plane{ -x, 50 texture{Starfield}}
// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      pigment{checker color Black color White}} // end of plane

light_source{<10, 10, 10*clock> color rgb <1,1,1>}
//-------------------------------------------------------------


object{Rocket}
       //rotate<30*clock 0> translate<1,2.0*clock,1.0*clock>} //end of union
//--------------------------------------------------------- end

