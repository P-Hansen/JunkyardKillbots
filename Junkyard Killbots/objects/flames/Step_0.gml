/// @description Insert description here

scale += 0.09;
image_xscale = scale;
image_yscale = scale;

if(scale >= 1.5){
	instance_destroy(self);
}