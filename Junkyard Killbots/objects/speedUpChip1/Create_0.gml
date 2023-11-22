/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "speed up, attack speed down";
cost = 100;
upgrade = speedUpChip2;

modifierFunction = function(newBot){
	newBot.baseCooldown += 10;
	newBot.maxSpeed += 0.15;
}