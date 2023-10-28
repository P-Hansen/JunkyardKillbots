
//find target and point in it's direction
if instance_exists(target){
	target = instance_nearest(x,y,enemyClass);
	direction = point_direction(x, y, target.x, target.y);
} else {
	target = instance_nearest(x,y,enemyClass);
}

//stop when within range
if instance_exists(target){
	if (distance_to_object(target) <= range){
		speed = 0;
	} else {
		speed = maxSpeed;
	}
} else {
	speed = 0;
}

//direction flip when moving
if(direction >= 90 and direction <= 270){
	image_xscale = -1;
} else {
	image_xscale = 1;
}

//death
if (hp <= 0){
	instance_destroy(creatorSlot);
	instance_destroy(self);
}