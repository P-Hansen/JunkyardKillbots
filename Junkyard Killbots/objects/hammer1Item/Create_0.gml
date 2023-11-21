/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "A hammer, slow but great for smashing";
range = 10;
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,-1,hammer1);
		newBot.slot1 = arm;
		arm.body = newBot;
	
	} else {
		var arm2 = instance_create_depth(x,y,1,hammer1);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	}
}