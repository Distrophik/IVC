#include "colors.inc"
#include "textures.inc"

// the astronaut
#declare Astronaut = union {	
	//Kopf
	union{    
	        sphere{ <0, 1.5, 0> 0.6
                pigment{image_map {png "images/mp2.png"} scale 0.1}}//texture{Chrome_Metal}}
                sphere{ <0, 1.5, -0.1> 0.55
                texture {Gold_Nugget}}
        }
        
        //Torso
	sphere { <0,0,0>, 1.0
	        scale x*0.75
	        scale z*0.75
		//texture {Chrome_Metal}
		pigment{image_map {png "images/mp2.png"} scale 0.1}
	} 
	
	//Schulter 1
	sphere { <-0.65, 0.6,0> 0.45
	        pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal}
	}
		
	//Arm 1
	cylinder {
		<-0.6, 0.6, 0>, <-1.1, 1.6, 0>, 0.25
		pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal} 
	}  
	  
	//Schulter 2
	sphere { <0.65, 0.6,0> 0.45
	        pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal}
	}  
	
	//Arm 2
	cylinder {
		<0.6, 0.6, 0>, <1.1, 1.6, 0>, 0.25
		pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal}
	}
	
	//Bein 1
	cylinder {
		<-0.7, -2.0, 0>, <-0.4, -0.2, 0.0>, 0.4
		pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal}
	} 
	
	//Bein 2
	cylinder {
		<0.7, -2.0, 0>, <0.4, -0.2, 0.0>, 0.4
		pigment{image_map {png "images/mp2.png"} scale 0.1}//texture {Chrome_Metal}
	}
}