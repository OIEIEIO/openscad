// Generated by OpenSCAD (https://www.openscad.org/)
// Source file: pov-export.scad

// Camera settings are at the bottom of this script

#version 3.7;
global_settings { assumed_gamma 1.0 }
#declare MATERIAL=finish { specular 0.5 roughness 0.001 reflection{0 0.63 fresnel} ambient 0 diffuse 0.6 conserve_energy }
#declare MATERIAL_INT=interior{ior 1.32}
polygon { 4, 
<-10, 0, 0>, <-10, 0, 10>, <-10, 10, 10>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 0>, <-10, 10, 0>, <0, 10, 0>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 0>, <-10, 10, 10>, <-10, 10, 0>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 0>, <0, 0, 0>, <0, 0, 10>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 0>, <0, 0, 10>, <-10, 0, 10>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 0>, <0, 10, 0>, <0, 0, 0>, <-10, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 0, 10>, <0, 0, 10>, <-10, 10, 10>, <-10, 0, 10>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 10, 0>, <-10, 10, 10>, <0, 10, 0>, <-10, 10, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 10, 10>, <0, 0, 10>, <0, 10, 10>, <-10, 10, 10>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<-10, 10, 10>, <0, 10, 10>, <0, 10, 0>, <-10, 10, 10>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<0, 0, 0>, <0, 10, 0>, <0, 0, 10>, <0, 0, 0>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<0, 0, 10>, <0, 10, 0>, <0, 10, 10>, <0, 0, 10>
texture { pigment { color rgbf <1, 0.5, 0.25, 0.875> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <10, 0, 10>, <10, 10, 10>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <10, 10, 0>, <20, 10, 0>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <10, 10, 10>, <10, 10, 0>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <20, 0, 0>, <20, 0, 10>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <20, 0, 10>, <10, 0, 10>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 0>, <20, 10, 0>, <20, 0, 0>, <10, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 0, 10>, <20, 0, 10>, <10, 10, 10>, <10, 0, 10>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 10, 0>, <10, 10, 10>, <20, 10, 0>, <10, 10, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 10, 10>, <20, 0, 10>, <20, 10, 10>, <10, 10, 10>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<10, 10, 10>, <20, 10, 10>, <20, 10, 0>, <10, 10, 10>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<20, 0, 0>, <20, 10, 0>, <20, 0, 10>, <20, 0, 0>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
polygon { 4, 
<20, 0, 10>, <20, 10, 0>, <20, 10, 10>, <20, 0, 10>
texture { pigment { color rgbf <0, 0.501961, 0, 0> } }
finish { MATERIAL } interior { MATERIAL_INT }
}
light_source { <-70, -20, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, -20, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, -20, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 5, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 5, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 5, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 30, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 30, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <-70, 30, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <5, -20, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <5, -20, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <5, -20, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 5, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 5, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 5, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 30, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 30, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <5, 30, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <80, -20, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <80, -20, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <80, -20, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 5, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 5, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 5, 30> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 30, -20> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 30, 5> color rgb <0.2, 0.2, 0.2> }
light_source { <80, 30, 30> color rgb <0.2, 0.2, 0.2> }
camera { look_at <0, 0, 0>
 location <0, 0, 100>
 angle 22.5 up <0, 1, 0> right <1, 0, 0> sky <0, 1, 0> right -x*image_width/image_height
translate <0, 0, 0>
rotate <0, 0 + clock * 3, 0 + clock>
}
#include "rad_def.inc"
global_settings { photons { count 20000 autostop 0 jitter .4 } radiosity { Rad_Settings(Radiosity_Normal, off, off) } }