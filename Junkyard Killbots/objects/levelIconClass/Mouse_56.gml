/// @description Insert description here
// You can write your code in this editor

if(!position_meeting(mouse_x, mouse_y, self)){
	selectedFlag = false;
	button.visibleFlag = false;
} else {
	selectedFlag = true;
	
	global.difficultyLevel = difficulty;
	global.enemyPool = enemyPool;
	global.currentLevelIcon = self;
}
