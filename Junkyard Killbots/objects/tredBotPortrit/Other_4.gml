/// @description creating bots

//spawn bots from your inventory
if (room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect"){
	var newBot = instance_create_layer(0, y, layer, body);
	newBot.creatorSlot = self;
	var baseRange = newBot.range;
	//adding weapons and getting lowest range
	for(var i = 0; i < array_length(weaponSlots); i++){
		if(instance_exists(weaponSlots[i].item)){
			weaponSlots[i].item.modifierFunction(newBot);
		}
		if(i == 0){
			newBot.range += weaponSlots[0].item.range;
		} else {
			newBot.range = min(weaponSlots[i].item.range, newBot.range-baseRange)+baseRange;
		}
	}

	//executeModifierFunctions(widgetSlots, newBot);
	executeModifierFunctions(chipSlots, newBot);
}