/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "attack speed up, accuracy down";
cost = 100;
upgrade = attackSpeedUpChip2;

modifierFunction = function(newBot){
	newBot.baseCooldown += -10;
	newBot.baseAccuracy += 15;
}