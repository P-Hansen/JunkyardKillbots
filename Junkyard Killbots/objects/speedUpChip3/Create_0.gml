/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Move speed chip, move speed up 50%";
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.maxSpeed = newBot.maxSpeed*1.5;
}