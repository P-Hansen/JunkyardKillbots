/// @description check for level end

//win
if(instance_number(enemyClass) < 1){
	//flag to upgrad level icons
	global.upgradLevelsFlag = true;
	//change current levels icon to "defeated"
	global.currentLevelIcon.image_index = 1;
	room_goto(rmHome);
}
//loss
if(instance_number(bot) < 1){
	global.upgradLevelsFlag = true;
	room_goto(rmHome);
}