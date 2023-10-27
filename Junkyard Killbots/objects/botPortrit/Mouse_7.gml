/// @description drag and drop off

pressedFlag = false;

//find slot you released on
if place_meeting(x, y, botSlot) {
	//clear old slot
	if instance_exists(slot) {slot.bots = noone;}
	//find new slot
	var newSlot = instance_nearest(x,y,botSlot);
	//if the slot is empty put yourself in it
	if(newSlot.bots == noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.bots = self;
	} else { //slot is full snap back to old slot
		x = slot.x;
		y = slot.y;
		slot.bots = self;
	}
//snap back to old slot if you release on empty space
} else if instance_exists(slot) {
	x = slot.x;
	y = slot.y;
}