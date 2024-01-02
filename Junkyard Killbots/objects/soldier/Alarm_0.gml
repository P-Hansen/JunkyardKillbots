/// @description idol to wander

if(state == states.idle){
	var roll = choose(0,1);
	if (roll == 0){
		direction = irandom_range(0,359);
		state = states.wander;
	}
} else if (state == states.wander){
	var roll = choose(0,1);
	if (roll == 0){
		state = states.idle;
	}
}

alarm[0] = game_get_speed(gamespeed_fps)*2.5;