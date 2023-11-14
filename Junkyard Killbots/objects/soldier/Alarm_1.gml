/// @description attack

if (state == states.attack and instance_exists(target)){
	if (distance_to_object(target) <= range){
		state = states.attack;
		sprite_index = sprites[states.attack];
	} else {
		state = states.alert;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,3);


