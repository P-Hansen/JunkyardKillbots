/// @description attack
image_angle = body.direction;

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
		swingFlag = true;
		endAngle = image_angle+90;
		var shot = instance_create_depth(x, y, 0, playerBullet);
		shot.direction = image_angle+random_range(-body.baseAccuracy, body.baseAccuracy)+random_range(-accuracy, accuracy);
		shot.speed = 2;
		shot.damage = damage+body.baseDamage;
	}
}

alarm[1] = cooldown;