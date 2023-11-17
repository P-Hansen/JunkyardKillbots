/// @description check for level end

//win
if(instance_number(enemyClass) < 1 and levelEndFlag == false){
	//flag to upgrad level icons
	global.upgradLevelsFlag = true;
	//change current levels icon to "defeated"
	global.currentLevelIcon.defeatedFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*3;
	levelEndFlag = true;
}
//loss
if(instance_number(bot) < 1 and levelEndFlag == false){
	global.upgradLevelsFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*3;
	levelEndFlag = true;
}