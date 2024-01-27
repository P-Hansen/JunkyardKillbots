//global.seed = randomize();
//show_debug_message("SEED: "+string(global.seed));
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
global.currentWorld = rmMissionSelect3;
global.voiceCooldown = 0;
global.nextLevel = noone;

room_goto(rmStartMenu);