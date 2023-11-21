/// @description Insert description here

//stack count
if (stackCount > 1){
	draw_text_color((x*2)+6,(y*2)-1, string(stackCount), c_black, c_black, c_black, c_black, 1);
	draw_text_color((x*2)+5,(y*2)-3, string(stackCount), c_white, c_white, c_white, c_white, 1);
}

if(stackCount == 3 and item.upgrade != noone){
	var upgrade = item.upgrade;
	var itemsInSlot = ds_list_create();
	collision_point_list(x, y, parentItem, false, true, itemsInSlot, false);
	for(var i = 0; i < ds_list_size(itemsInSlot); i++){
		var itemToBeDeleted = ds_list_find_value(itemsInSlot, i);
		instance_destroy(itemToBeDeleted);
	}
	item = instance_create_layer(x, y, layer, upgrade);
	item.slot = self;
	stackCount = 1;
}
/*
var newItem = choose(attackSpeedUpChip, attackSpeedUpAccuracydownChip, speedUpAttackSpeedDownChip, gunArmItem, club1Item, hammer1Item);
pushToInventory(newItem);

//put item into inventory
function pushToInventory(drop){
	for(var i = 0; i < array_length(playerInventory.items); i++){
		if(playerInventory.items[i].item == noone){
			playerInventory.items[i].item = instance_create_layer(playerInventory.items[i].x, playerInventory.items[i].y, layer, drop);
			playerInventory.items[i].item.slot = playerInventory.items[i];
			playerInventory.items[i].item.slot.stackCount++;
			break;
		}
	}
}
*/