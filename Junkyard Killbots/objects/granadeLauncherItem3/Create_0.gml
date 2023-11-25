/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = " 2x300 cooldown 2.5sec";
range = 90;
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,-1,granadeLauncher3);
		newBot.slot1 = arm;
		arm.body = newBot;
	
	} else {
		var arm2 = instance_create_depth(x,y,1,granadeLauncher3);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	}
}