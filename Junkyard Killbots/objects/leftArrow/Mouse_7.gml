/// @description Insert description here
// You can write your code in this editor

playerInventory.robots[repairController.botSelection].image_index = 0;

if(repairController.botSelection <= 0){
	repairController.botSelection = 11;
} else {
	repairController.botSelection--;
}

playerInventory.robots[repairController.botSelection].image_index = 1;