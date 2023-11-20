/// @description drag and drop off

pressedFlag = false;

//item scrapper
if place_meeting(x, y, itemScrapper) {
	//clear old slot
	if instance_exists(slot) {
		slot.item = noone;
		slot.stackCount--;
	}
	global.scrapTotal += cost/2;
	instance_destroy(self);
}

//find slot you released on
if place_meeting(x, y, chipSlot) || place_meeting(x, y, anyItemSlot) {
	//clear old slot
	if instance_exists(slot) {
		slot.item = noone;
		slot.stackCount--;
	}
	//find new slot
	var newSlot = nearestSlot(x, y, chipSlot, anyItemSlot);
	//if the slot is empty put yourself in it
	if(newSlot.item == noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
		slot.stackCount++;
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
//snap back to old slot if you release on empty space
} else if instance_exists(slot) {
	x = slot.x;
	y = slot.y;
}