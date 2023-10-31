// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scripInventory(){

}

//put item into inventory
function pushToInventory(){
	for(var i = 0; i < array_length(playerInventory.items); i++){
		if(playerInventory.items[i].item == noone){
			playerInventory.items[i].item = instance_create_layer(playerInventory.items[i].x, playerInventory.items[i].y, layer, attackUp);
			playerInventory.items[i].item.slot = playerInventory.items[i];
			break;
		}
	}
}

function nearestSlot(x1, y1, slot1, slot2){
	var nearest1 = instance_nearest(x1, y1, slot1);
	var nearest2 = instance_nearest(x1, y1, slot2);
	var distanceTo1 = point_distance(x1, y1, nearest1.x, nearest1.y);
	var distanceTo2 = point_distance(x1, y1, nearest2.x, nearest2.y);
	
	if(distanceTo1 <= distanceTo2){
		return nearest1;
	} else {
		return nearest2;
	}
}

function hideEachSlot(array){
	for(var i = 0; i < array_length(array); i++){
		array[i].x -= 1000;
		if(instance_exists(array[i].item)){
			array[i].item.x -= 1000;
		}
	}
}

function showEachSlot(array){
	for(var i = 0; i < array_length(array); i++){
		array[i].x += 1000;
		if(instance_exists(array[i].item)){
			array[i].item.x += 1000;
		}
	}
}