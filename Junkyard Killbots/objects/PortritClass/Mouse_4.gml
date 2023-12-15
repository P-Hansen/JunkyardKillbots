/// @description drag and drop on

if (room == rmRepair){
	playerInventory.robots[repairController.botSelection].image_index = 0;
	//hide slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots){
		hideEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
		hideEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
		//hideEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
	}

	pressedFlag = true;
}