/// @description

if (room_get_name(room) == "rmRepair"){
	hideItems();
	hideRobots();
	hideStrayItems();
}

if (room_get_name(room) != "rmInit" and room_get_name(room) != "rmRepair" and room_get_name(room) != "rmStore"){
	hideRobots();
}