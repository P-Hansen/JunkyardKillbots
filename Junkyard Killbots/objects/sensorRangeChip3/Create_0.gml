/// @description Insert description here

scale = 0.5;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "increase sensor range by 50%";
cost = 100;
upgrade = noone;
bonus = 0;

modifierFunction = function(newBot){
	newBot.baseSightRange = newBot.baseSightRange*1.5;
}