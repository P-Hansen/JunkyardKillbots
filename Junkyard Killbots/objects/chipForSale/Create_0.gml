/// @description Insert description here

object = randomChip();
sprite_index = object_get_sprite(object);

if(sprite_get_width(sprite_index) > 16){
	image_xscale = 0.5;
	image_yscale = 0.5;
}

sold = false;