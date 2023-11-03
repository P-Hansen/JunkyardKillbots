/// @description 

playerInventory.robots[repairController.botSelection].bots = instance_create_layer(playerInventory.robots[repairController.botSelection].x, playerInventory.robots[repairController.botSelection].y, layer, playerInventory.blueprints[0].creates);
playerInventory.robots[repairController.botSelection].bots.slot = playerInventory.robots[repairController.botSelection];

showEachSlot(playerInventory.robots[repairController.botSelection].bots.chipSlots);
showEachSlot(playerInventory.robots[repairController.botSelection].bots.weaponSlots);
showEachSlot(playerInventory.robots[repairController.botSelection].bots.widgetSlots);