/// @description spawn bots

//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	hideItems();
	var spawn = function(element, i){
		if(element != noone){
			instance_create_layer(0, i*21, layer, element);
		}
	}
	array_foreach(robots, spawn);
}

if (room_get_name(room) == "rmHome"){
	x = -100;
	hideItems();
}

if (room_get_name(room) == "rmRepair"){
	x = 0;
	showItems();
}