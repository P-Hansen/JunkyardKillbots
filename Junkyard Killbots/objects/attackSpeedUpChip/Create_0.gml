/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "placeholder text";
cost = 100;

modifierFunction = function(newBot){
	newBot.baseCooldown += -0.25;
}