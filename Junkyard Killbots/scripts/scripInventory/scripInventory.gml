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