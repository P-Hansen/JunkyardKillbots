/// @description attack

if instance_exists(target){
	if (distance_to_object(target) <= range){
		var finalDamge = damage*target.baseArmor;
		target.hp -= finalDamge;
		target.flashTimer = 5;
		audio_play_sound(sfxHit, 0, 0);
		dmgNumber(finalDamge, target.x, target.y);
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,3);


