/// @description Insert description here
// You can write your code in this editor
if(instance_exists(slot)){
	slot.bots = noone;
}

for (var i = 0; i < array_length(weaponSlots); i++){
	if (instance_exists(weaponSlots[i].item)){
		instance_destroy(weaponSlots[i].item);
	}
	instance_destroy(weaponSlots[i]);
}