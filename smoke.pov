// PoVRay 3.7 Scene File "steam_smoke_2.pov"
// author: Friedrich A. Lohmueller, Oct-2008/Aug-2009
// email: Friedrich.Lohmueller_at_t-online.de
// homepage: http://www.f-lohmueller.de
//--------------------------------------------------------------------------
#if (version < 3.7) global_settings{ assumed_gamma 1.0 } #end
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"

#declare Smoke =
union{
//  Scattering media - streuendes Medium
//  steam + Smoke - Dampf + Rauch !!!!
// A transparent sphere containing media
sphere{ <0,0,0>, 1.5  // increased from 1 to 1.5, because of the turbulent pattern !!!
        pigment { rgbt 1 } 
        hollow  

 interior{ //---------------------
    media{ method 3
           emission 0.6
           scattering{ 1, // Type 1 = isotropic scattering, 2 = Mie haze, 3 = Mie murky 
                          // Type 4 = Rayleigh scattering,  5 = Henyey-Greenstein scattering 
                       <1,1,1>*3.00        // color of scattering haze  
                       extinction  1.50    // 0 ~ 1 extinction 
                       // how fast the scattering media absorbs light 
                       // useful i.e. when the media absorbs too much light
                      // eccentricity i.e. -0.6 ~ +0.6 (if type>1 )
           } // end scattering   

           density{ spherical  
                    turbulence 0.85
                    color_map {
                    [0.00 rgb 0] // density at the border of the media
                    [0.05 rgb 0]
                    [0.20 rgb 0.2]
                    [0.30 rgb 0.6]
                    [0.40 rgb 1]
                    [1.00 rgb 1] // densitiy at the center of the media
                               } // end color_map
           } // end of density

           samples 1,1     // 3,3 for adaptive sampling
           intervals 3     //  
           confidence .9   //  
     } // end of media ----------------------------------------------------------------------
  } // ------------------ end of interior
 scale 1
 rotate<clock * 500,clock * 500,0>
 translate < -0.5, 1.50 + 0.20,0> 
} //------------------ end of "Rauch" 
}
