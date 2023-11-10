/// @description Insert description here
// You can write your code in this editor

//hide final selections inventory
if instance_exists(playerInventory.robots[botSelection].bots){
	hideEachSlot(playerInventory.robots[botSelection].bots.chipSlots);
	hideEachSlot(playerInventory.robots[botSelection].bots.weaponSlots);
	hideEachSlot(playerInventory.robots[botSelection].bots.widgetSlots);
}
//reset selection
playerInventory.robots[botSelection].image_index = 0;
botSelection = 0;