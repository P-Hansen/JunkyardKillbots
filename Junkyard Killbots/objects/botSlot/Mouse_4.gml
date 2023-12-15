/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(mouse_x, mouse_y, layer, bullet);

if (room == rmRepair) {
	var newSlot = instance_nearest(mouse_x, mouse_y, botSlot);
	//change selection frame
	playerInventory.robots[repairController.botSelection].image_index = 0;
	//hide slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots){
		hideEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
		hideEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
		//hideEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
	}
	//change selection
	var index = array_get_index(playerInventory.robots, newSlot);
	repairController.botSelection = index;
	//show new slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots){
		showEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
		showEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
		//showEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
	}
	//change selected frame
	playerInventory.robots[repairController.botSelection].image_index = 1;

}

