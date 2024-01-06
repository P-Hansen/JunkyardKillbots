/// @description attack
if(instance_exists(body)){
if instance_exists2(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= clamp(body.range, 0, body.baseSightRange)){
		var shot = instance_create_depth(x, y, 0, playerBullet);
		shot.sprite_index = sprBulletEnergy;
		shot.critChance = body.critChance;
		shot.direction = image_angle+random_range(-body.baseAccuracy, body.baseAccuracy);
		shot.image_angle = shot.direction;
		shot.speed = 2;
		shot.damage = damage+body.baseDamage;
		audio_sound_pitch(sfxPlasmaGun, random_range(0.8, 1));
		audio_play_sound(sfxPlasmaGun, 10, false);
	}
}
	alarm[1] = cooldown + body.baseCooldown;
}