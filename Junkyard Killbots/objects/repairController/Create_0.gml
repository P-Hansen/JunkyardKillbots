/// @description Insert description here
// You can write your code in this editor

botSelection = 0;
playerInventory.robots[botSelection].image_index = 1;

//show starting selections inventory
if instance_exists(playerInventory.robots[botSelection].bots){
	playerInventory.robots[botSelection].bots.weaponSlots[0].x += 1000;
	playerInventory.robots[botSelection].bots.weaponSlots[1].x += 1000;
	//show items in the slots
	if instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[0].item){
			playerInventory.robots[botSelection].bots.weaponSlots[0].item.x += 1000;
	}
	if instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[1].item){
			playerInventory.robots[botSelection].bots.weaponSlots[1].item.x += 1000;
	}
}