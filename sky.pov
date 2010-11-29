#include "textures.inc"
#include "colors.inc"
#include "skies.inc"

sky_sphere{
    pigment {planar colour_map{[0,rgb <0.9,0.9,1>][1, rgb <0.1,0.2,1>]}}
    pigment{P_Cloud4}
    scale 2 //avoid repetion
    translate 300  //dx, dz, dy
}

