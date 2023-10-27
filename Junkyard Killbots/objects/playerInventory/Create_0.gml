/// @description Insert description here

image_yscale = 5.82;

robots = array_create(12, noone);
robots[0] = bot;
robots[6] = bot;
robots[11] = bot;

items = array_create(24, noone);

//creating items slots for items array
for(var i = 0; i < array_length(items); i++){
	var xOffset = 502;
	var yOffset = 11;
	if (i > 11){
		xOffset = xOffset - 22;
		yOffset = -229;
	}
	items[i] = instance_create_layer(xOffset,yOffset+i*20, layer, itemSlot);
}

//hide item slots off screen
function hideItems(){
	for(var i = 0; i < array_length(items); i++){
		items[i].x = items[i].x + 1000;
		if instance_exists(items[i].item){
			items[i].item.x = items[i].x;
		}
	}
}
//bring item slots back
function showItems(){
	for(var i = 0; i < array_length(items); i++){
		items[i].x = items[i].x - 1000;
		if instance_exists(items[i].item){
			items[i].item.x = items[i].x;
		}
	}
}

showItemsFlag = false;