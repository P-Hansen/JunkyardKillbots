/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "placeholder text that is really long so I can see how the word wrap looks when it's really long and shit";
range = 35;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,-1,gunArm);
		newBot.slot1 = arm;
		arm.body = newBot;
	
	} else {
		var arm2 = instance_create_depth(x,y,1,gunArm);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	}
}