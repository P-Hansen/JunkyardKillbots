/// @description Insert description here

audio_play_sound(sfxButtonClick, 10, false);

image_index += 1;
if(game_get_speed(gamespeed_fps) == 30){
	game_set_speed(60, gamespeed_fps);
} else {
	game_set_speed(30, gamespeed_fps);
}



