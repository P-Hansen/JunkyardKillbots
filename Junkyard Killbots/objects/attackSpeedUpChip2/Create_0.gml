/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "attack speed up 25%, accuracy down slightly";
cost = 100;
upgrade = attackSpeedUpChip3;

modifierFunction = function(newBot){
	newBot.baseCooldown = newBot.baseCooldown*0.75;
	newBot.baseAccuracy += 5;
}