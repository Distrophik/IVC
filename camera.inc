#include "math.inc"
#include "transforms.inc"

#declare MySpline =
  spline {
    cubic_spline
    -0.25, <10,2,20> // control point
    0.00, <6,2,16>
    0.25, <2,2,12>
    0.50, <-1,2,8>
    0.75, <-4,2,4>
    1.00, <-2,2,0>
    1.25, <2,2, -4>
  }

#declare SplineCam =
camera {
	angle 90
      location <20,2,20>
      look_at <0,0,0>
      //translate <0,0.4,0.4>
      Spline_Trans (MySpline, clock, y, 0.5, 0.0)
   }
