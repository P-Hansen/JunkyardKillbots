/// @description Insert description here

for(var i = 12; i > 0; i--){
	var _bot = bot;
	instance_create_layer(-10, i*20, layer, _bot);
}

alarm[1] =  game_get_speed(gamespeed_fps)*1;
alarm[2] =  game_get_speed(gamespeed_fps)*3;
alarm[3] =  game_get_speed(gamespeed_fps)*5;
