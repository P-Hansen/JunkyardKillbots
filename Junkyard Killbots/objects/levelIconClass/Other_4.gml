/// @description Insert description here
// You can write your code in this editor

if (global.upgradLevelsFlag == true){
	var roll = choose(0,1);

	if(roll == 0){
		difficulty += 1;
		flashTimer = game_get_speed(gamespeed_fps)*1;
	}
}