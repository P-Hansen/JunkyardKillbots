/// @description Insert description here

global.scrapTotal = 0;
image_yscale = 5.82;

robots = array_create(12, noone);
//creating items slots for items array
for(var i = 0; i < array_length(robots); i++){
	var xOffset = 21;
	robots[i] = instance_create_layer(xOffset, 10.5+i*21, layer, botSlot);
}
//starting 3 bots
robots[0].bots = instance_create_layer(robots[0].x, robots[0].y, layer, botPortrit);
robots[0].bots.slot = robots[0];
robots[1].bots = instance_create_layer(robots[1].x, robots[1].y, layer, botPortrit);
robots[1].bots.slot = robots[1];
robots[2].bots = instance_create_layer(robots[2].x, robots[2].y, layer, botPortrit);
robots[2].bots.slot = robots[2];

items = array_create(24, noone);
//creating items slots for items array
for(var i = 0; i < array_length(items); i++){
	var xOffset = 502;
	var yOffset = 11;
	if (i > 11){
		xOffset = xOffset - 22;
		yOffset = -229;
	}
	items[i] = instance_create_layer(xOffset,yOffset+i*20, layer, anyItemSlot);
}
items[0].item = instance_create_layer(items[0].x, items[0].y, layer, hammer1Item);
items[0].item.slot = items[0];
items[0].item.slot.stackCount++;
items[1].item = instance_create_layer(items[1].x, items[1].y, layer, gunArmItem);
items[1].item.slot = items[1];
items[1].item.slot.stackCount++;
items[12].item = instance_create_layer(items[12].x, items[12].y, layer, club1Item);
items[12].item.slot = items[12];
items[12].item.slot.stackCount++;
items[13].item = instance_create_layer(items[13].x, items[13].y, layer, attackSpeedUpAccuracydownChip);
items[13].item.slot = items[13];
items[13].item.slot.stackCount++;

//blueprints
blueprints = array_create(1, noone);
blueprints[0] = instance_create_layer(-1000, -1000, layer, botBlueprint);

//hide item slots off screen
function hideItems(){
	hideEachSlot(items);
	/*for(var i = 0; i < array_length(items); i++){
		items[i].x = items[i].x + 1000;
		if instance_exists(items[i].item){
			items[i].item.x = items[i].x;
		}
	}*/
}
//bring item slots back
function showItems(){
	showEachSlot(items);
	/*for(var i = 0; i < array_length(items); i++){
		items[i].x = items[i].x - 1000;
		if instance_exists(items[i].item){
			items[i].item.x = items[i].x;
		}
	}*/
}

hideItems();
showItemsFlag = false;

//hide item slots off screen
function hideRobots(){
	for(var i = 0; i < array_length(robots); i++){
		robots[i].x = robots[i].x + 1000;
		if instance_exists(robots[i].bots){
			robots[i].bots.x = robots[i].x;
		}
	}
}
//bring item slots back
function showRobots(){
	for(var i = 0; i < array_length(robots); i++){
		robots[i].x = robots[i].x - 1000;
		if instance_exists(robots[i].bots){
			robots[i].bots.x = robots[i].x;
		}
	}
}

hideRobots();