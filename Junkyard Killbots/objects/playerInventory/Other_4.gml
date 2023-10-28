/// @description 
//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	var spawn = function(element, i){
		if(element.bots != noone){
			var temp = instance_create_layer(0, i*21, layer, element.bots.body);
			temp.creatorSlot = element.bots;
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