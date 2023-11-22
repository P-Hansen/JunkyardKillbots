/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "attack speed up 10%, accuracy down";
cost = 100;
upgrade = attackSpeedUpChip2;

modifierFunction = function(newBot){
	newBot.baseCooldown = newBot.baseCooldown*0.9;
	newBot.baseAccuracy += 15;
}