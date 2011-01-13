#include "colors.inc"
#include "textures.inc"
#include "stones1.inc"
#include "rocket.pov"
#include "stones.inc"
#include "sky.pov"
#include "smoke.pov"
#include "camera.inc"
global_settings { assumed_gamma 1 }

// camera -----------------------------------------------------
camera{SplineCam}
//#declare Cam1 = camera {angle 60
//			#if (clock>0.0)
//				rotate <0, clock * -10, 0>
//			#end
//                     	location  <10, 2, 20>
//                        look_at   <0 , 0, 0>
//}
//camera{Cam1}

// ground -----------------------------------------------------
plane{ <0,1,0>, 0 
      texture{T_Stone24}} // end of plane

light_source{<10, 10, 10> color rgb <1,1,1>}
//-------------------------------------------------------------

#declare RocketWithSmoke = 
union {
	object{Rocket}
	object{Hatch}
	object{Smoke
		scale <1 - clock,1 - clock,1 - clock>
		translate <0.4, -2, 0>
	}
}

object{RocketWithSmoke
}

//--------------------------------------------------------- end

