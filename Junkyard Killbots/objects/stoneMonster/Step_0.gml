/// @description 

target = instance_nearest(x,y,botClass);
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
	//keeping unit on screen
	if (x > room_width or y > room_height or x < 0 or y < 0){
		direction = point_direction(x, y, room_width/2, room_height/2);
	}
	if (instance_exists(target) and distance_to_object(target) <= sightRange){
		state = states.alert;
	}

} else if (state == states.attack){
	speed = 0;
	//after attack animation plays change state back to alert
	if (sprite_index == sprites[states.attack]){
		if (image_index >= sprite_get_number(sprite_index)-2){
			if (instance_exists(target) and hitFlag == true){
				target.hp -= damage;
				target.flashTimer = 5;
				audio_play_sound(sfxHit, 0, 0);
				dmgNumber(damage, target.x, target.y);
				hitFlag = false;
			}
		}
		if (image_index >= sprite_get_number(sprite_index)-1){
			state = states.alert;
		}
	}
	
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
