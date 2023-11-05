/// @description

if (room_get_name(room) == "rmRepair"){
	hideItems();
	hideRobots();
}

if(room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair"){
	hideRobots();
}