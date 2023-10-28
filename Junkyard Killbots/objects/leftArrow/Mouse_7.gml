/// @description Insert description here
// You can write your code in this editor

playerInventory.robots[repairController.BotSelection].image_index = 0;

if(repairController.BotSelection <= 0){
	repairController.BotSelection = 11;
} else {
	repairController.BotSelection--;
}

playerInventory.robots[repairController.BotSelection].image_index = 1;