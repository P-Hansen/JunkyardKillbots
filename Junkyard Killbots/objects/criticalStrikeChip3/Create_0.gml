/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Targeting chip, target enemy weakpoints 40% critical strike (2x damage)";
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.critChance += 40;
}