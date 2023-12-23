/// @description chew

if(numberOfBites > 0){
	numberOfBites -= 1;
	if(image_index == 1){
		image_index = 0;
	} else {
		image_index = 1;
	}
	//audio_play_sound(sfxReload1, 0, 0);
	alarm[1] = game_get_speed(gamespeed_fps)*0.2;
}