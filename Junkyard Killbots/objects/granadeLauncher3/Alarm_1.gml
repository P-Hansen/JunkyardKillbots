/// @description attack

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= clamp(body.range, 0, body.baseSightRange)){
		var shot = instance_create_depth(x, y, 0, grenade);
		shot.critChance = body.critChance;
		shot.direction = image_angle + random_range(-body.baseAccuracy, body.baseAccuracy)+5;
		shot.speed = 3;
		shot.damage = damage+body.baseDamage;
		audio_sound_pitch(sfxLaunch, random_range(0.8, 1));
		audio_play_sound(sfxLaunch, 10, false);
		
		var shot2 = instance_create_depth(x, y, 0, grenade);
		shot2.critChance = body.critChance;
		shot2.direction = image_angle + random_range(-body.baseAccuracy, body.baseAccuracy)-5;
		shot2.speed = 3;
		shot2.damage = damage+body.baseDamage;
		audio_sound_pitch(sfxLaunch, random_range(0.8, 1));
		audio_play_sound(sfxLaunch, 10, false);
	}
}

if(instance_exists(body)){
	alarm[1] = cooldown + body.baseCooldown;
}