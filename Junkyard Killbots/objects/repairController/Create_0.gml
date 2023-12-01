/// @description Insert description here
// You can write your code in this editor

botSelection = 0;
playerInventory.robots[botSelection].image_index = 1;

//show starting selections inventory
if instance_exists(playerInventory.robots[botSelection].bots){
	showEachSlot(playerInventory.robots[botSelection].bots.chipSlots);
	showEachSlot(playerInventory.robots[botSelection].bots.weaponSlots);
	showEachSlot(playerInventory.robots[botSelection].bots.widgetSlots);
}

showBlueprintsFlag = false;
buildButton = instance_create_layer(1000, 220, layer, buildBotButton);
blueprintSelection = 0;
arrowL = instance_create_layer(1000, 175, layer, leftArrow);
arrowR = instance_create_layer(1000, 175, layer, rightArrow);

showBot = noone;
