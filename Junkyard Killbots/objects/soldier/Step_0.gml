/// @description 

target = instance_nearest(x,y,bot);
if (direction > 90 and direction < 270){
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (state == states.idle){
	speed = 0;
	sprite_index = sprites[states.idle];
	if (instance_exists(target) and distance_to_object(target) <= sightRange){
		state = states.alert;
	}

} else if (state == states.wander){

	speed = maxSpeed;
	sprite_index = sprites[states.wander];
	if (instance_exists(target) and distance_to_object(target) <= sightRange){
		state = states.alert;
	}

} else if (state == states.attack){
	speed = 0;

	if (sprite_index == sprites[states.attack]){
		if (image_index >= sprite_get_number(sprite_index)-1){
			state = states.alert;
		}
	}
	//sprite_index = sprites[states.attack];
	
} else if (state == states.alert){
	sprite_index = sprites[states.alert];
	if (instance_exists(target)){
		direction = point_direction(x, y, target.x, target.y)
		speed = maxSpeed;
	}
	if (distance_to_object(target) <= range){
		state = states.attack;
		image_index = sprites[states.idle];
	}
}




//death
if (hp <= 0){
	instance_destroy(self);
}
