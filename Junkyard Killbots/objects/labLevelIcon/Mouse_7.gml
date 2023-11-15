/// @description Insert description here
// You can write your code in this editor

if(image_index == 0){
	global.difficultyLevel = difficulty;
	global.enemyPool = [soldier, barrel];
	global.currentLevelIcon = self;

	room_goto(rmLab);
}