/// @description attack

if instance_exists2(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
		swingFlag = true;
		target = instance_nearest(x,y,enemyClass);
		audio_sound_pitch(sfxSwing, random_range(0.8, 1));
		audio_play_sound(sfxSwing, 10, false);
	}
}

if(instance_exists(body)){
	alarm[1] = cooldown + body.baseCooldown + random_range(game_get_speed(gamespeed_fps)*-0.1, game_get_speed(gamespeed_fps)*0.1);
}