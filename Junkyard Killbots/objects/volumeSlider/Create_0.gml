/// @description Insert description here

maxVol = x + sprite_width;

slider = instance_create_depth(maxVol, y, depth-1, volumeSliderButton);
slider.minVolume = x;
slider.maxVolume = maxVol;
