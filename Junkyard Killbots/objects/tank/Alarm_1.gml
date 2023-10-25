/// @description attack

if instance_exists(target){
	if (distance_to_object(target) <= range){
		var shot = instance_create_layer(x, y, layer, bullet);
		shot.direction = point_direction(x, y, target.x, target.y);
		shot.speed = 2;
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,3);


