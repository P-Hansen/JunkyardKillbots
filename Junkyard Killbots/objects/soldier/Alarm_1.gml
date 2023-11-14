/// @description attack

if (state == states.attack and instance_exists(target)){
	if (distance_to_object(target) <= range){
		sprite_index = sprites[states.attack];
		var shot = instance_create_layer(x, y, layer, bullet);
		shot.direction = point_direction(x, y, target.x, target.y);
		shot.speed = 2;
		shot.damage = damage;
	} else {
		state = states.alert;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,3);
