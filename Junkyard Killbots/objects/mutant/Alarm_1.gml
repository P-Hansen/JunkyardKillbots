/// @description attack

if (state == states.attack and instance_exists(target)){
	//melee attack
	if (distance_to_object(target) <= range){
		sprite_index = sprites[states.attack];
		hitFlag = true;
	} else { //out of range move to alert state
		state = states.alert;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,2);
