/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 2*game_get_speed(gamespeed_fps);
description = "Double grenade launcher, 2x300 cooldown 2.5sec";
range = 90;
cost = 100;
upgrade = noone;
botWeapon = granadeLauncher3;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,newBot.depth-1,botWeapon);
		newBot.slot1 = arm;
		arm.body = newBot;
	} else if(newBot.slot2 == noone) {
		var arm2 = instance_create_depth(x,y,newBot.depth+1,botWeapon);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	} else if(newBot.slot3 == noone) {
		var arm3 = instance_create_depth(x,y,newBot.depth-1,botWeapon);
		newBot.slot3 = arm3;
		arm3.body = newBot;
	} else {
		var arm4 = instance_create_depth(x,y,newBot.depth+1,botWeapon);
		newBot.slot4 = arm4;
		arm4.body = newBot;
	}
}