randomize();

enum states{
	idle,
	wander,
	alert,
	attack
}

global.upgradLevelsFlag = true;
global.difficultyLevel = 0;
global.enemyPool = [];
global.currentLevelIcon = noone;

room_goto(rmHome);