/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Armor chip, reduces damage by 20%";
cost = 100;
upgrade = armorChip3;

modifierFunction = function(newBot){
	newBot.baseArmor = newBot.baseArmor*0.8;
}