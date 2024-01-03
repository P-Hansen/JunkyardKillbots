/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Attack speed chip, attack speed up 50%";
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.baseCooldown = newBot.baseCooldown*0.5;
}