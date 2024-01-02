/// @description find bot collisions and -x

var num = instance_place_list(x, y, botClass, listOfBots, false);

if(num > 0){
	for(var i = 0; i < num; i++){
		var currentBot = ds_list_find_value(listOfBots, i);
		if(instance_exists(currentBot)){
			currentBot.x -= 1.5;
		}
	}
}

alarm[1] = game_get_speed(gamespeed_fps)*0.1;


