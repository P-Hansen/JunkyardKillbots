/// @description drag and drop off

pressedFlag = false;

//item scrapper
if place_meeting(x, y, itemScrapper) {
	//clear old slot
	if instance_exists(slot) {
		slot.item = noone;
		slot.stackCount--;
	}
	var numberText = instance_create_depth(x, y, -5, scrapNumber);
	numberText.amount = cost/2;
	global.scrapTotal += cost/2;
	instance_destroy(self);
}

//find slot you released on
if place_meeting(x, y, weaponSlot) || place_meeting(x, y, anyItemSlot) {
	//clear old slot
	if instance_exists(slot) {
		slot.item = noone;
		slot.stackCount--;
	}
	//find new slot
	var newSlot = nearestSlot(x, y, weaponSlot, anyItemSlot);
	//if the slot is empty put yourself in it
	if(newSlot.item == noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
		audio_play_sound(choose(sfxReload1, sfxReload2), 0, 0);
	} else if object_get_name(newSlot.object_index) == "anyItemSlot" && (object_get_name(newSlot.item.object_index) == object_get_name(object_index)){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
	} else { //slot is full snap back to old slot
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
	}

} else if (place_meeting(x, y, autoEquip) and instance_exists(playerInventory.robots[repairController.botSelection].bots)) {
	//clear old slot
	if instance_exists(slot) {
		slot.item = noone;
		slot.stackCount--;
	}
	//find new slot
	var weaponsArray = playerInventory.robots[repairController.botSelection].bots.weaponSlots;
	var length = array_length(weaponsArray);
	var newSlot = noone;
	for(i = length-1; i >= 0; i--){
		if(weaponsArray[i].item = noone){
			newSlot = weaponsArray[i];
		}
	}
	//if empty slot exists move there
	if(newSlot != noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
		audio_play_sound(choose(sfxReload1, sfxReload2), 0, 0);
	//no empty slots move back
	} else {
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
	}
//snap back to old slot if you release on empty space
} else if instance_exists(slot) {
	x = slot.x;
	y = slot.y;
}