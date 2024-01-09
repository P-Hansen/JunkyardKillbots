/// @description Insert description here
/* //non working recover items code
var allItemsArray = [noone, noone, noone];
//put all weapons, chips, and widgets into one array
for (var i = 0; i < array_length(creatorSlot.weaponSlots); i++){
	if (creatorSlot.weaponSlots[i].item != noone){
		array_push(allItemsArray, creatorSlot.weaponSlots[i].item);
	}
}
for (var i = 0; i < array_length(creatorSlot.chipSlots); i++){
	if (creatorSlot.chipSlots[i].item != noone){
		show_debug_message(creatorSlot.chipSlots[i].item);
		array_push(allItemsArray, creatorSlot.chipSlots[i].item);
	}
}
for (var i = 0; i < array_length(creatorSlot.widgetSlots); i++){
	if (creatorSlot.widgetSlots[i].item != noone){
		array_push(allItemsArray, creatorSlot.widgetSlots[i].item);
	}
}
while(numberOfItemsToSave > 0){
	var i = array_length(allItemsArray)-1;
	var roll = irandom_range(0, i);
	for(var j = 0; j < array_length(playerInventory.items); j++){
		if(playerInventory.items[j].item == noone){
			playerInventory.items[j].item = allItemsArray[roll];
			playerInventory.items[j].item.slot = playerInventory.items[j];
			playerInventory.items[j].item.slot.stackCount++;
			break;
		}
	}
	array_push(missionController.itemsFound, allItemsArray[roll]);
	//array_delete(allItemsArray, roll, 1);
	numberOfItemsToSave--;
}
*/

//destroy portrit
//instance_destroy(creatorSlot);
//destroy weapons
instance_destroy(slot1);
instance_destroy(slot2);

var numberText = instance_create_depth(x, y, -5, scrapNumber);
numberText.amount = -scrapRefundOnDeath;
global.scrapTotal -= scrapRefundOnDeath;
missionController.scrapFound -= scrapRefundOnDeath;
missionController.botsLost += 1;

instance_create_layer(x, y, layer, corps);
creatorSlot.image_index = 1;
creatorSlot.damagedFlag = true;
creatorSlot.body = corps;