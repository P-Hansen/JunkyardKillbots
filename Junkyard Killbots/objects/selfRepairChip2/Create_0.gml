/// @description Insert description here

scale = 0.5;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Bot self repairs 20hp per second";
cost = 100;
upgrade = noone;
bonus = 0;

modifierFunction = function(newBot){
	newBot.alarm[2] = game_get_speed(gamespeed_fps)*1;
	newBot.healAmount = 20;
}