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

//display weapons
function displayFunction(element, index){
	if(instance_exists(element.item)){
		var portrait = playerInventory.robots[botSelection].bots;
		var sprite = object_get_sprite(element.item.botWeapon);
		draw_sprite_ext(sprite, 0, room_width/2+portrait.weaponOffsetX[index]*3.75, room_height/2+portrait.weaponOffsetY[index]*3.75, 3.75, 3.75, 0, c_white, 1);
	}
}