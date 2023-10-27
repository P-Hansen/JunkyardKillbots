/// @description 
//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	var spawn = function(element, i){
		if(element.bots != noone){
			instance_create_layer(0, i*21, layer, element.bots.body);
		}
	}
	array_foreach(robots, spawn);
}

if (room_get_name(room) == "rmHome"){
	x = -100;
}

if (room_get_name(room) == "rmRepair"){
	x = 0;
	showItems();
}