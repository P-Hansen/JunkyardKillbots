/// @description drag and drop off

pressedFlag = false;

if place_meeting(x, y, itemSlot) {
	slot = instance_nearest(x,y,itemSlot);
	x = slot.x;
	y = slot.y;
	slot.item = self;
}