/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "increase scrap found by all bots by 40%";
cost = 100;
upgrade = noone;
bonus = 0;

modifierFunction = function(newBot){
	bonus = global.scavengerBonus*0.4;
	global.scavengerBonus += bonus;
}