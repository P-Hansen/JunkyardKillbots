/// @description attack

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= clamp(body.range, 0, body.baseSightRange)){
		var shot = instance_create_depth(x, y, 0, playerBullet);
		shot.direction = image_angle+random_range(-body.baseAccuracy, body.baseAccuracy);
		shot.speed = 2;
		shot.damage = damage+body.baseDamage;
	}
}

alarm[1] = cooldown;