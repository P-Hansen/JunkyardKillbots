/// @description countdown

if(image_index == sprite_get_number(sprite_index)-1){
	var explostion = instance_create_depth(x, y, -5, explosion1);
	explostion.damage = damage;
	var scale = 0.5;
	explostion.image_xscale = scale;
	explostion.image_yscale = scale;
//	instance_destroy(self);
	instance_create_depth(x, y, -4, ash1);
} else {
	audio_play_sound(sfxBeep, 10, false);
}

image_index += 1;
alarm[1] = cooldown;
