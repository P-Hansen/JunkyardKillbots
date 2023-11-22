/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "move speed up 35%, attack speed down 5%";
cost = 100;
upgrade = speedUpChip3;

modifierFunction = function(newBot){
	newBot.baseCooldown = newBot.baseCooldown*1.05;
	newBot.maxSpeed = newBot.maxSpeed*1.35;
}