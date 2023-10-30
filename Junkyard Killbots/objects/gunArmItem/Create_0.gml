/// @description Insert description here

pressedFlag = false;
slot = noone;
isVisible = true;
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