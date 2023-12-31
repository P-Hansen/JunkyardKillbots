/// @description Win screen

if(allLevelsFinished(levels)){
	global.currentWorld = rmMissionSelect2;
	room_goto(global.currentWorld);
}