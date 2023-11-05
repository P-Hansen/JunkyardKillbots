/// @description

//spawn bots from your inventory
if (room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair"){
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