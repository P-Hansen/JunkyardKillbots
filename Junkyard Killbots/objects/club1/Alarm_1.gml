/// @description attack

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
		swingFlag = true;
		//shot.damage = damage+body.baseDamage;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(0.9,1.1)+body.baseCooldown;