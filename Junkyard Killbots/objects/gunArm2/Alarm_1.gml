/// @description attack

if instance_exists(body.target){
	if (distance_to_object(body.target) <= body.range){
		var shot = instance_create_depth(x, y, 0, playerBullet);
		shot.direction = image_angle;
		shot.speed = 2;
		shot.damage = damage+body.baseDamage;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(0.9,1.1)+body.baseCooldown;