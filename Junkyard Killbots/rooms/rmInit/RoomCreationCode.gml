randomize();

enum states{
	idle,
	wander,
	alert,
	attack
}

global.upgradLevelsFlag = true;

room_goto(rmHome);