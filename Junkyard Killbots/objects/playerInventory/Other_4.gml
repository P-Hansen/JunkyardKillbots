/// @description

//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	showRobots();
}

if (room_get_name(room) == "rmHome"){
	x = -100;
}

if (room_get_name(room) == "rmRepair"){
	x = 0;
	showItems();
	showRobots();
}