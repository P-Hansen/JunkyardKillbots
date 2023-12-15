/// @description 

if(global.scrapTotal >= playerInventory.blueprints[repairController.blueprintSelection].cost){
	var i = repairController.botSelection;
	var j = repairController.blueprintSelection;
	playerInventory.robots[i].bots = instance_create_layer(playerInventory.robots[i].x, playerInventory.robots[i].y, layer, playerInventory.blueprints[j].creates);
	playerInventory.robots[i].bots.slot = playerInventory.robots[i];

	showEachSlot(playerInventory.robots[i].bots.chipSlots);
	showEachSlot(playerInventory.robots[i].bots.weaponSlots);
	//showEachSlot(playerInventory.robots[i].bots.widgetSlots);

	global.scrapTotal -= playerInventory.blueprints[j].cost;
} else {
	playerInventory.redTextFrames = 25;
	repairController.redTextFrames = 25;
}