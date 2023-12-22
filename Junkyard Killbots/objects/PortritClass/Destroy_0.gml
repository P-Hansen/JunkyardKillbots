/// @description Insert description here
// You can write your code in this editor
if(instance_exists(slot)){
	slot.bots = noone;
}

for (var i = 0; i < array_length(weaponSlots); i++){
	if (instance_exists(weaponSlots[i].item)){
		for(var j = 0; j < array_length(playerInventory.items); j++){
			if(playerInventory.items[j].item == noone){
				playerInventory.items[j].item = weaponSlots[i].item;
				playerInventory.items[j].item.slot = playerInventory.items[j];
				playerInventory.items[j].item.slot.stackCount++;
				weaponSlots[i].item.x = playerInventory.items[j].x;
				weaponSlots[i].item.y = playerInventory.items[j].y;
				break;
			}
		}
		//instance_destroy(weaponSlots[i].item);
	}
	instance_destroy(weaponSlots[i]);
}

for (var i = 0; i < array_length(chipSlots); i++){
	if (instance_exists(chipSlots[i].item)){
		if (instance_exists(chipSlots[i].item)){
			for(var j = 0; j < array_length(playerInventory.items); j++){
				if(playerInventory.items[j].item == noone){
					playerInventory.items[j].item = chipSlots[i].item;
					playerInventory.items[j].item.slot = playerInventory.items[j];
					playerInventory.items[j].item.slot.stackCount++;
					chipSlots[i].item.x = playerInventory.items[j].x;
					chipSlots[i].item.y = playerInventory.items[j].y;
					break;
				}
			}
		}
		//instance_destroy(chipSlots[i].item);
	}
	instance_destroy(chipSlots[i]);
}