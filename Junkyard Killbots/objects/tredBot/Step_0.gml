//find target and point in it's direction
if instance_exists(target){
	target = instance_nearest(x,y,enemyClass);
	if (seeTraps == true){
		target = instance_nearest(x,y,enemyAndTrapClass);
	}
	if (point_distance(x, y, target.x, target.y) <= baseSightRange){
		direction = point_direction(x, y, target.x, target.y);
	}
} else {
	direction = 0;
	target = instance_nearest(x,y,enemyClass);
	if (seeTraps == true){
		target = instance_nearest(x,y,enemyAndTrapClass);
	}
}

//stop when within range
if instance_exists(target){
	if (point_distance(x, y, target.x, target.y) <= clamp(range, 0, baseSightRange)){
		speed = 0;
	} else {
		speed = maxSpeed;
	}
} else {
	//direction = 0
	speed = maxSpeed;
}

//direction flip when moving
if(direction >= 90 and direction <= 270){
	image_xscale = -1;
} else {
	image_xscale = 1;
}
	
//updating parts
if(slot1 != noone){
	slot1.x = x+3;
	slot1.y = y+5;
}
if(slot2 != noone){
	slot2.x = x+7;
	slot2.y = y+5;
}
if(slot3 != noone){
	slot3.x = x+9;
	slot3.y = y+5;
}
if(slot4 != noone){
	slot4.x = x+11;
	slot4.y = y+5;
}

//death
if (hp <= 0){
	instance_destroy(self);
}