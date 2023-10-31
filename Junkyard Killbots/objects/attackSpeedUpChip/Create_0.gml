/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "placeholder text";

modifierFunction = function(newBot){
	newBot.baseCooldown += -0.25;
}