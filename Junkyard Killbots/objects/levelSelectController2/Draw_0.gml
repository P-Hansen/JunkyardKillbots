/// @description Win screen

if(allLevelsFinished(levels)){
	global.currentWorld = rmMissionSelect3;
	room_goto(global.currentWorld);
}