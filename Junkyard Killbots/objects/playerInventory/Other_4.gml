/// @description

//spawn bots from your inventory
if (room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair" and room_get_name(room) != "rmStore"){
	showRobots();
}

if (room_get_name(room) == "rmInit"){
	x = -100;
}

if (room_get_name(room) == "rmRepair"){
	x = 0;
	showItems();
	showRobots();
	showStrayItems();
}