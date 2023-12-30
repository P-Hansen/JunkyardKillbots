/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Can attack and taunts enemies within 150 to attack";
cost = 100;
upgrade = tauntChip2;

modifierFunction = function(newBot){
	newBot.alarm[3] = 1;
	newBot.tauntRange = 150;
}