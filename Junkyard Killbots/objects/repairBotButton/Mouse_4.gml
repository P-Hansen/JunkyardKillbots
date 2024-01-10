/// @description 

if(global.scrapTotal >= playerInventory.robots[repairController.botSelection].bots.refund){

	playerInventory.robots[repairController.botSelection].bots.damagedFlag = false;
	playerInventory.robots[repairController.botSelection].bots.image_index = 0;
	playerInventory.robots[repairController.botSelection].bots.body = playerInventory.robots[repairController.botSelection].bots.originalBody;

	global.scrapTotal -= playerInventory.robots[repairController.botSelection].bots.refund;
	audio_play_sound(sfxBuild1, 0, 0);
}/* else {
	playerInventory.redTextFrames = 25;
	repairController.redTextFrames = 25;
}*/