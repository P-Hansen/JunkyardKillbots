/// @description attack

if instance_exists(body.target){
	if (point_distance(body.x, body.y, body.target.x, body.target.y) <= body.range){
		swingFlag = true;
		target = instance_nearest(x,y,enemyClass);
		rotateSpeed = 25;
	} else {
		rotateSpeed = 5;
	}
}

if(instance_exists(body)){
	alarm[1] = cooldown + body.baseCooldown;
}