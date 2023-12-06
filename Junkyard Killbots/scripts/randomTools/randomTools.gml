// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomTools(){

}

//instance exists that can handle "noone"
function instance_exists2(object){
	if(object == noone){
		return false;
	} else {
		return instance_exists(object);
	}
}

//returns a random level 1 item, used on enemy death and at game start in inventory
function randomItem(){
return choose(attackSpeedUpChip1, speedUpChip1, club1Item, hammer1Item, gunArmItem1, gun1Item,
	sawItem1, armorChip1, criticalStrikeChip1, scavengerChip1, sensorRangeChip1, granadeLauncherItem1, 
	selfRepairChip1, fireResistanceChip1);
}