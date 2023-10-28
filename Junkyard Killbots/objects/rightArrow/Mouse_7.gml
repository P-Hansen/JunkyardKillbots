/// @description Insert description here
// You can write your code in this editor

//change selection frame
playerInventory.robots[repairController.botSelection].image_index = 0;

//hide slots
if instance_exists(playerInventory.robots[repairController.botSelection].bots){
	playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].x -= 1000;
	playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].x -= 1000;
	//hide items in the slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].item){
			playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].item.x -= 1000;
	}
	if instance_exists(playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].item){
			playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].item.x -= 1000;
	}
}
//change selection
if(repairController.botSelection >= 11){
	repairController.botSelection = 0;
} else {
	repairController.botSelection++;
}

//show new slots
if instance_exists(playerInventory.robots[repairController.botSelection].bots){
	playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].x += 1000;
	playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].x += 1000;
	//show items in the slots
	if instance_exists(playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].item){
			playerInventory.robots[repairController.botSelection].bots.weaponSlots[0].item.x += 1000;
	}
	if instance_exists(playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].item){
			playerInventory.robots[repairController.botSelection].bots.weaponSlots[1].item.x += 1000;
	}
}

//change selected frame
playerInventory.robots[repairController.botSelection].image_index = 1;