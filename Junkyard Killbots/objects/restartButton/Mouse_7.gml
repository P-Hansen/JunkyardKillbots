/// @description Insert description here
audio_play_sound(sfxButtonClick, 10, false);
//under 5 seconds in
if(fiveSecondFlag == false){
	//flag to upgrad level icons
	global.upgradLevelsFlag = false;
	//change current levels icon to "defeated"
	global.currentLevelIcon.defeatedFlag = false;
	global.scrapTotal += missionController.scrapFound;
} else { //over 5 seconds in
	//flag to upgrad level icons
	global.upgradLevelsFlag = true;
	global.currentLevelIcon.defeatedFlag = false;
	global.scrapTotal += missionController.scrapFound;
}

room_goto(global.currentWorld);