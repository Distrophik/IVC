#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "smoke.pov"


// camera -----------------------------------------------------
#declare Cam1 =camera {angle 60
                       location  <10, 2 , 20>
                     //  rotate <0, 0, 0>
                       look_at   <0 , 0 , 0>}
camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<10, 10, 10> color rgb <1,1,1>}
//-------------------------------------------------------------

#declare RocketWithSmoke = 
union {
	object{Rocket}
	object{Smoke
		translate <0.4, -2, 0>}
}

object{RocketWithSmoke
	translate <0, 10 - (clock * 10),0>
	rotate <0, 0, 25 - (clock * 25)>
}

//object{Rocket
//	translate <0, 10 - (clock * 10),0>
//	rotate <0, 0, 25 - (clock * 25)>}

//object{Smoke
//	translate <0, 10 - (clock * 10), 0>
//	rotate <0, 0, 25 - (clock * 25)>
//}

//--------------------------------------------------------- end

