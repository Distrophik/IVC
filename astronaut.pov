#include "colors.inc"
#include "textures.inc"

// the astronaut
#declare Astronaut = union {
	sphere { <0,0,0>, 1.0
		texture {Chrome_Metal}
	}
	//Arm 1
	cylinder {		<-0.7, 0.3, sin(clock*pi*20)>, <-2.0, 0.0, 0.0>, 0.4
		texture {Chrome_Metal}	}
	//Arm 2
	cylinder {		<0.7, 0.3, cos(clock*pi*20)>, <2.0, 0.0, 0.0>, 0.4
		texture {Chrome_Metal}	}
	
	//Bein 1
	cylinder {		<-1.0, -2.0, cos(clock*pi*20)>, <-0.4, -0.5, 0.0>, 0.4
		texture {Chrome_Metal}	}
	//Bein 2
	cylinder {		<1.0, -2.0, sin(clock*pi*20)>, <0.4, -0.5, 0.0>, 0.4
		texture {Chrome_Metal}	}
	

	
	
	superellipsoid
    {
        <0.5, 5>
        translate<0,1,0>
        texture {Chrome_Metal}
        }
}
