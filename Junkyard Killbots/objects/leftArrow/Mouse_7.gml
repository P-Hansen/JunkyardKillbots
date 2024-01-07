/// @description 

//change selection
if(repairController.blueprintSelection <= 0){
	repairController.blueprintSelection = array_length(playerInventory.blueprints)-1;
} else {
	repairController.blueprintSelection--;
}

x -= 7;
audio_play_sound(sfxBlueprintFlip, 10, false);

/*
//change selection frame
playerInventory.robots[repairController.botSelection].image_index = 0;
//hide slots
if instance_exists(playerInventory.robots[repairController.botSelection].bots){
	hideEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
	hideEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
	hideEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
}
//change selection
if(repairController.botSelection <= 0){
	repairController.botSelection = 11;
} else {
	repairController.botSelection--;
}
//show new slots
if instance_exists(playerInventory.robots[repairController.botSelection].bots){
	showEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
	showEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
	showEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);
}
//change selected frame
playerInventory.robots[repairController.botSelection].image_index = 1;
*/