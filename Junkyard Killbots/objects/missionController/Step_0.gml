/// @description check for level end

//win
if(instance_number(enemyClass) < 1 and levelEndFlag == false) or
	(botsOffscreen() and levelEndFlag == false and instance_number(activeEnemyClass) < 1){
	//flag to upgrad level icons
	global.upgradLevelsFlag = true;
	//change current levels icon to "defeated"
	global.currentLevelIcon.defeatedFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*5;
	//global.scrapTotal += scrapFound;
	levelEndFlag = true;
}
//loss
if(instance_number(botClass) < 1 and levelEndFlag == false) or
	(botsOffscreen() and levelEndFlag == false){
	global.upgradLevelsFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*5;
	//global.scrapTotal += scrapFound;
	levelEndFlag = true;
}
//game over
if(global.scrapTotal < 0 and gameOver == false){
	alarm[1] = game_get_speed(gamespeed_fps)*5;
	gameOver = true;
	levelEndFlag = true;
}