/// @description attack

if instance_exists(target){
	if (distance_to_object(target) <= range){
		target.hp = target.hp - damage;
		target.flashTimer = 5;
		audio_play_sound(sfxHit, 0, 0);
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*1;


