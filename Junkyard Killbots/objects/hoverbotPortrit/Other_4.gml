/// @description creating bots

//spawn bots from your inventory
if (room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect"){
	var newBot = instance_create_layer(0, y, layer, body);
	newBot.creatorSlot = self;
	if(instance_exists(weaponSlots[0].item)){
		weaponSlots[0].item.modifierFunction(newBot);
		newBot.range += weaponSlots[0].item.range;
	}
	executeModifierFunctions(widgetSlots, newBot);
	executeModifierFunctions(chipSlots, newBot);
}