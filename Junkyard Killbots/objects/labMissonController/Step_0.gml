/// @description check for level end push blueprint on win

//win
if(instance_number(enemyClass) < 1 and levelEndFlag == false) or
	(botsOffscreen() and levelEndFlag == false and instance_number(activeEnemyClass) < 1){
	//flag to upgrad level icons
	global.upgradLevelsFlag = true;
	//change current levels icon to "defeated"
	global.currentLevelIcon.defeatedFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*5;
	global.scrapTotal += scrapFound;
	levelEndFlag = true;
	//push a random blueprint
	var newItem = randomBlueprint();
	array_push(missionController.blueprintsFound, newItem);
	array_push(playerInventory.blueprints, instance_create_layer(-1000, -1000, layer, newItem));
//loss
} else if(instance_number(botClass) < 1 and levelEndFlag == false) or
	(botsOffscreen() and levelEndFlag == false){
	global.upgradLevelsFlag = true;
	alarm[1] = game_get_speed(gamespeed_fps)*5;
	global.scrapTotal += scrapFound;
	levelEndFlag = true;
}