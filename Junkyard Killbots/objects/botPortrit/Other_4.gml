/// @description creating bots

//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	var newBot = instance_create_layer(0, y, layer, body);
	newBot.creatorSlot = self;
	if(instance_exists(weaponSlots[0].item)){
		weaponSlots[0].item.createFunction(newBot);
	}
	if(instance_exists(weaponSlots[1].item)){
		weaponSlots[1].item.createFunction(newBot);
	}
}
