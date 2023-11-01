/// @description drag and drop off

pressedFlag = false;

//find slot you released on
if place_meeting(x, y, widgetSlot) {
	//clear old slot
	if instance_exists(slot) {slot.item = noone;}
	//find new slot
	var newSlot = instance_nearest(x,y,widgetSlot);
	//if the slot is empty put yourself in it
	if(newSlot.item == noone){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
	//if there is a matching item in the slot
	} else if (object_get_name(newSlot.item.object_index) == object_get_name(object_index)){
		slot = newSlot;
		x = slot.x;
		y = slot.y;
		slot.item = self;
		stackCount++;
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