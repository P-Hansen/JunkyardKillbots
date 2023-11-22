/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "speed up even more, attack speed down slightly";
cost = 100;
upgrade = speedUpChip3;

modifierFunction = function(newBot){
	newBot.baseCooldown += 5;
	newBot.maxSpeed += 0.30;
}