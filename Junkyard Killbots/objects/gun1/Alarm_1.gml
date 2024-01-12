/// @description attack
if(instance_exists2(body)){
	image_angle = body.direction;

	if instance_exists(body.target){
		if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
			swingFlag = true;
			endAngle = image_angle+90;
			var shot = instance_create_depth(x, y, 0, playerBullet);
			shot.image_xscale = 0.5;
			shot.image_yscale = 0.5;
			shot.critChance = body.critChance;
			shot.direction = image_angle+random_range(-body.baseAccuracy, body.baseAccuracy)+random_range(-accuracy, accuracy);
			shot.speed = 2;
			shot.damage = damage+body.baseDamage;
			audio_sound_pitch(sfxPistol, random_range(0.8, 1));
			audio_play_sound(sfxPistol, 10, false);
		}
	}

	alarm[1] = cooldown + body.baseCooldown + random_range(game_get_speed(gamespeed_fps)*-0.1, game_get_speed(gamespeed_fps)*0.1);
}