#include "math.inc"
#include "transforms.inc"

//Note: Because of the way cubic_splines are defined: the first and last points are tangents rather than points on the spline, cubic_spline interpolation is only valid between the second and next-to-last points. For all other spline types, interpolation is valid from the first point to the last point. For t-values outside the valid range, POV-Ray returns the value of the nearest valid point. 

#declare MySpline =
  spline {
    cubic_spline
   -0.1, <10,  2,     20> //control point
    0.0, <10,  2,     20> // start point
    0.1, <13,  2.2,   15>
    0.2, <16,  2.3,   5>
    0.3, <13,  2.4,  -5>
    0.4, < 9,  2.5,  -10>
    0.5, <-6,  2.6,  -8>
    0.6, <-12, 2.7,   0>
    0.7, <-8,  2.8,   5>
    0.8, <-4,  2.9,   4>
    0.9, <-2,  3.0,   0>
    1.0, < 0 , 3.1,   0.3> // end point
    1.1, < 0 , 3.1,   0.3> // control point
  }

#declare SplineCam =
camera {
	angle 80-clock*20
	//look_at <-0.5,0,1>
	look_at <0, 2.5, 10>
	Spline_Trans (MySpline, clock, y, 0.5, 0.0)
}

//#declare ctr = 0;
//#while (ctr < 1)
//  sphere {
//    MySpline(ctr),.25
//    pigment { rgb <1-ctr,ctr,0> }
//  }
//  #declare ctr = ctr + 0.01;
//#end


