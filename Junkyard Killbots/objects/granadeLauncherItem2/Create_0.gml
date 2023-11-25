/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = " 450 cooldown 2sec";
range = 90;
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,-1,granadeLauncher2);
		newBot.slot1 = arm;
		arm.body = newBot;
	
	} else {
		var arm2 = instance_create_depth(x,y,1,granadeLauncher2);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	}
}