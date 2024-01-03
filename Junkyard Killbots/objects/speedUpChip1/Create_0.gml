/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Move speed chip, move speed up 20%, attack speed down 10%";
cost = 100;
upgrade = speedUpChip2;

modifierFunction = function(newBot){
	newBot.baseCooldown = newBot.baseCooldown*1.1;
	newBot.maxSpeed = newBot.maxSpeed*1.2;
}