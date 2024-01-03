/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Scavenger chip, increase scrap found by all bots by 10%";
cost = 100;
upgrade = scavengerChip2;
bonus = 0;

modifierFunction = function(newBot){
	bonus = global.scavengerBonus*0.1;
	global.scavengerBonus += bonus;
}