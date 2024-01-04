/// @description creating bots

//spawn bots from your inventory
if (room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect" and room_get_name(room) != "rmMissionSelect2" and room_get_name(room) != "rmStore"){
	var newBot = instance_create_layer(0, y, layer, body);
	newBot.creatorSlot = self;
	var baseRange = newBot.range;
	//adding weapons and getting lowest range
	for(var i = 0; i < array_length(weaponSlots); i++){
		if(instance_exists(weaponSlots[i].item)){
			weaponSlots[i].item.modifierFunction(newBot);
		}
		if(instance_exists(weaponSlots[i].item)) and (i == 0){
			newBot.range += weaponSlots[0].item.range;
		} else if(instance_exists(weaponSlots[i].item)){
			var oldRange = newBot.range-baseRange
			newBot.range = min(weaponSlots[i].item.range, oldRange)+baseRange;
		}
	}

	//executeModifierFunctions(widgetSlots, newBot);
	executeModifierFunctions(chipSlots, newBot);
}