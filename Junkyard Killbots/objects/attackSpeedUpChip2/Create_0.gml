/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "attack speed up even more, accuracy down slightly";
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.baseCooldown += -20;
	newBot.baseAccuracy += 5;
}