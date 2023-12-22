/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "reduce damage by 10%";
cost = 100;
upgrade = armorChip2;

modifierFunction = function(newBot){
	newBot.baseArmor = newBot.baseArmor*0.9;
}