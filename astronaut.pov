#include "colors.inc"
#include "textures.inc"

// the astronaut
#declare Astronaut = union {
	sphere { <0,0,0>, 1.0
		texture {Water}
	}
	//Arm 1
	cylinder {		<-0.7, 0.3, 0.0>, <-2.0, 0.0, 0.0>, 0.4
		texture {Water}	}
	//Arm 2
	cylinder {		<0.7, 0.3, 0.0>, <2.0, 0.0, 0.0>, 0.4
		texture {Water}	}
	
	//Bein 1
	cylinder {		<-1.0, -2.0, 0.0>, <-0.4, -0.5, 0.0>, 0.4
		texture {Water}	}
	//Bein 2
	cylinder {		<1.0, -2.0, 0.0>, <0.4, -0.5, 0.0>, 0.4
		texture {Water}	}
	

	
	
	superellipsoid
    {
        <0.5, 5>
        translate<0,1,0>
        texture {Water}
        }
}
