/// @description Insert description here

scale = 0.5;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Advanced sensors, increase sensor range by 20%";
cost = 100;
upgrade = sensorRangeChip2;
bonus = 0;

modifierFunction = function(newBot){
	newBot.baseSightRange = newBot.baseSightRange*1.2;
}