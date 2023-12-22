/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Does not attack and taunts enemies within 100 to attack -20% movespeed";
cost = 100;
upgrade = tauntChip2;

modifierFunction = function(newBot){
	newBot.alarm[3] = 1;
	newBot.doNotAttack = true;
	newBot.tauntRange = 100;
	newBot.maxSpeed = newBot.maxSpeed * 0.8;
}