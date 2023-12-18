/// @description Insert description here
global.seed = randomize();
show_debug_message("SEED: "+string(global.seed));

global.scrapTotal = 150;
image_yscale = 5.82;
redTextFrames = 0;

robots = array_create(12, noone);
//creating items slots for items array
for(var i = 0; i < array_length(robots); i++){
	var xOffset = 21;
	robots[i] = instance_create_layer(xOffset, 10.5+i*21, layer, botSlot);
}
//starting 3 bots
robots[3].bots = instance_create_layer(robots[3].x, robots[3].y, layer, minibotPortrit);
robots[3].bots.slot = robots[3];
robots[5].bots = instance_create_layer(robots[5].x, robots[5].y, layer, botPortrit);
robots[5].bots.slot = robots[5];
robots[7].bots = instance_create_layer(robots[7].x, robots[7].y, layer, minibotPortrit);
robots[7].bots.slot = robots[7];

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
items[0].item = instance_create_layer(items[0].x, items[0].y, layer, bombItem1);
items[0].item.slot = items[0];
items[0].item.slot.stackCount++;
items[1].item = instance_create_layer(items[1].x, items[1].y, layer, randomItem());
items[1].item.slot = items[1];
items[1].item.slot.stackCount++;
items[2].item = instance_create_layer(items[2].x, items[2].y, layer, randomItem());
items[2].item.slot = items[2];
items[2].item.slot.stackCount++;
items[12].item = instance_create_layer(items[12].x, items[12].y, layer, club1Item);
items[12].item.slot = items[12];
items[12].item.slot.stackCount++;
items[13].item = instance_create_layer(items[13].x, items[13].y, layer, randomItem());
items[13].item.slot = items[13];
items[13].item.slot.stackCount++;
items[14].item = instance_create_layer(items[14].x, items[14].y, layer, randomItem());
items[14].item.slot = items[14];
items[14].item.slot.stackCount++;

//blueprints
blueprints = array_create(2, noone);
blueprints[0] = instance_create_layer(-1000, -1000, layer, botBlueprint);
blueprints[1] = instance_create_layer(-1000, -1000, layer, minibotBlueprint);

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