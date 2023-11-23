/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "increase scrap found by all bots by 20%";
cost = 100;
upgrade = scavengerChip3;
bonus = 0;

modifierFunction = function(newBot){
	bonus = global.scavengerBonus*0.2;
	global.scavengerBonus += bonus;
}