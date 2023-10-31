/// @description drag and drop off

pressedFlag = false;

//find slot you released on
if place_meeting(x, y, chipSlot) || place_meeting(x, y, anyItemSlot) {
	//clear old slot
	if instance_exists(slot) {slot.item = noone;}
	//find new slot
	var newSlot = nearestSlot(x, y, chipSlot, anyItemSlot);
	//if the slot is empty put yourself in it
	if(newSlot.item == noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
	} else { //slot is full snap back to old slot
		x = slot.x;
		y = slot.y;
		slot.item = self;
	}
//snap back to old slot if you release on empty space
} else if instance_exists(slot) {
	x = slot.x;
	y = slot.y;
}