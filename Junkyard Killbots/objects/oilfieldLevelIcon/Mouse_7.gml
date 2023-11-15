/// @description Insert description here

if(image_index == 0){
	global.difficultyLevel = difficulty;
	global.enemyPool = [tank, teslaTowerSmall, teslaTowerLarge];
	global.currentLevelIcon = self;

	room_goto(rmOilfield);
}

