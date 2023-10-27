/// @description Insert description here

image_yscale = 5.82;

robots = array_create(12, noone);
robots[0] = bot;
robots[6] = bot;
robots[11] = bot;

items = array_create(24, noone);
/*
var createSlots = function(element, i){
	var xOffset = 11;
	var yOffset = 11;
	if (i > 11){
		xOffset = xOffset + 22;
		yOffset = -229;
	}
	element = instance_create_layer(xOffset,yOffset+i*20, layer, itemSlot);
}
array_foreach(items, createSlots);
*/

for(var i = 0; i < array_length(items); i++){
	var xOffset = 11;
	var yOffset = 11;
	if (i > 11){
		xOffset = xOffset + 22;
		yOffset = -229;
	}
	items[i] = instance_create_layer(xOffset,yOffset+i*20, layer, itemSlot);
}

function hide(array){
	for(var i = 0; i < array_length(array); i++){
		array[i].x = array[i].x + 100;
		if instance_exists(array[i].item){
			array[i].item.x = array[i].x;
		}
	}
}

function show(array){
	for(var i = 0; i < array_length(array); i++){
		array[i].x = array[i].x - 100;
		if instance_exists(array[i].item){
			array[i].item.x = array[i].x;
		}
	}
}

showItemsFlag = false;