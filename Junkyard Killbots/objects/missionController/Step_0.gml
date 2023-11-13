/// @description

//win
if(instance_number(enemyClass) < 1){
	global.upgradLevelsFlag = true;
	room_goto(rmHome);
}
//loss
if(instance_number(bot) < 1){
	global.upgradLevelsFlag = true;
	room_goto(rmHome);
}