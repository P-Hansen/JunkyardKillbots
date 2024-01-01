//global.seed = randomize();
//show_debug_message("SEED: "+string(global.seed));

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
global.currentWorld = rmMissionSelect2;

room_goto(rmRepair);