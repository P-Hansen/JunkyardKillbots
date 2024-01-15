/// @description Insert description here

audio_play_sound(sfxMainMenuMusic, 0, 0);

for(var i = 12; i > 0; i--){
	var _bot = bot;
	instance_create_layer(-10, i*21, layer, _bot);
}

alarm[1] =  game_get_speed(gamespeed_fps)*1;
alarm[2] =  game_get_speed(gamespeed_fps)*3;
alarm[3] =  game_get_speed(gamespeed_fps)*5;
