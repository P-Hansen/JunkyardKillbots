// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scripEffects(){

}

function dmgNumber(num, newX, newY){
	var number = instance_create_depth(newX, newY, -1, damageNumber);
	number.amount = num;
}