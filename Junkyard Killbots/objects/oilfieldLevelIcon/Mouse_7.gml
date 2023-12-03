/// @description Insert description here

if(image_index == 0){
	global.difficultyLevel = difficulty;
	global.enemyPool = [tank, teslaTowerSmall, teslaTowerLarge, mine];
	global.currentLevelIcon = self;

	room_goto(rmOilfield);
}

