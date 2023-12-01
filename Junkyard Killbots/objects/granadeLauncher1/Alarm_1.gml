/// @description attack

if instance_exists2(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= clamp(body.range, 0, body.baseSightRange)){
		var shot = instance_create_depth(x, y, 0, grenade);
		shot.critChance = body.critChance;
		shot.direction = image_angle + random_range(-body.baseAccuracy, body.baseAccuracy);
		shot.speed = 3;
		shot.damage = damage+body.baseDamage;
	}
}

if(instance_exists(body)){
	alarm[1] = cooldown + body.baseCooldown;
}