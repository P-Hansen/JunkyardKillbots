// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scripEffects(){

}

function dmgNumber(num, newX, newY){
	var number = instance_create_depth(newX, newY, -1, damageNumber);
	number.amount = num;
}
function showItemFound(item, _x, _y){
	var itemEffect = instance_create_depth(_x, _y, -1, itemFoundEffect);
	itemEffect.sprite_index = item.sprite_index;
	if(sprite_get_width(item.sprite_index) > 16){
		itemEffect.image_xscale = 0.5;
		itemEffect.image_yscale = 0.5;
	}
}

//for transition sequence
function nextRoom(){
	room_goto(global.nextLevel);
	layer_sequence_destroy(self.elementID);
}