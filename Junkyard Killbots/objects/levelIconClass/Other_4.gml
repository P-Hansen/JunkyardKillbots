/// @description Insert description here
// You can write your code in this editor

//for when level switches to being defeated
if (defeatedFlag == true){
	image_index = 1;
	//audio_play_sound(sfxHit, 0, 0);
} else {
	if (global.upgradLevelsFlag == true){
		var roll = choose(0,1);

		if(roll == 0){
			difficulty += 1;
			flashTimer = game_get_speed(gamespeed_fps)*1;
		}
	}
}