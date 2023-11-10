/// @description attack

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
		swingFlag = true;
		target = instance_nearest(x,y,enemyClass);
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1.9,2.1)+body.baseCooldown;