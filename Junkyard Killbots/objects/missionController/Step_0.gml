/// @description check for level end

//win
if(instance_number(enemyClass) < 1){
	global.upgradLevelsFlag = true;
	global.currentLevelIcon.image_index = 1;
	room_goto(rmHome);
}
//loss
if(instance_number(bot) < 1){
	global.upgradLevelsFlag = true;
	room_goto(rmHome);
}