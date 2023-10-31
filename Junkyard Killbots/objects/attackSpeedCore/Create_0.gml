/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "placeholder text";

modifierFunction = function(newBot){
	newBot.image_xscale += 1;
	newBot.image_yscale += 1;
}