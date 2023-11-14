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

	//stop if in range
	if (instance_exists(target) and distance_to_object(target) <= range){
		speed = 0;
	} else if (instance_exists(target)) { //move towards target if out of range
		direction = point_direction(x, y, target.x, target.y)
		speed = maxSpeed;
	}

	//create projectile on the correct frame of attack animation
	if (sprite_index == sprites[states.attack]){
		if (image_index == 1){
			var shot = instance_create_layer(x, y, layer, bullet);
			shot.direction = point_direction(x, y, target.x, target.y);
			shot.speed = 2;
			shot.damage = damage;
		} else if (image_index == sprite_get_number(sprite_index)-1){
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
		//alarm[1] = 1;
	}
}




//death
if (hp <= 0){
	instance_destroy(self);
}
