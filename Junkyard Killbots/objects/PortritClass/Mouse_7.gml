/// @description drag and drop off

if (pressedFlag == true){
	//change old slot selection art
	//playerInventory.robots[repairController.botSelection].image_index = 0;
	
	//item scrapper
	if place_meeting(x, y, itemScrapper) {
		//clear old slot
		slot.bots = noone;
		var numberText = instance_create_depth(x, y, -5, scrapNumber);
		numberText.amount = refund;
		global.scrapTotal += refund;
		instance_destroy(self);
	}
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
			//change selection
			var index = array_get_index(playerInventory.robots, newSlot);
			repairController.botSelection = index;
		} else { //slot is full snap back to old slot
			x = slot.x;
			y = slot.y;
			slot.bots = self;
			var index = array_get_index(playerInventory.robots, slot);
			repairController.botSelection = index;
		}
	//snap back to old slot if you release on empty space
	} else if instance_exists(slot) {
		x = slot.x;
		y = slot.y;
		var index = array_get_index(playerInventory.robots, slot);
		repairController.botSelection = index;
	}

	//showing slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots){
		showEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
		showEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
		//showEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
	}
	//change selected frame
	playerInventory.robots[repairController.botSelection].image_index = 1;
}

pressedFlag = false;