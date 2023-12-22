
//find target and point in it's direction
if instance_exists(target){
	//target = instance_nearest(x,y,botClass);
	direction = point_direction(x, y, target.x, target.y);
} else {
	target = instance_nearest(x,y,botClass);
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
	instance_destroy(self);
}