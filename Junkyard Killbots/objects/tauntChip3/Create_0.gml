/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Does not attack and taunts enemies within 200 to attack +30% armor";
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.alarm[3] = 1;
	newBot.doNotAttack = true;
	newBot.tauntRange = 200;
	newBot.baseArmor = newBot.baseArmor*0.7;
	
}