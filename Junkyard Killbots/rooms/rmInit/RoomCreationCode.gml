randomize();

enum states{
	idle,
	wander,
	alert,
	attack,
	display
}

global.upgradLevelsFlag = true;
global.difficultyLevel = 0;
global.enemyPool = [];
global.currentLevelIcon = noone;
global.scavengerBonus = 1;

room_goto(rmHome);