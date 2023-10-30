/// @description Insert description here
image_index = 1;

pressedFlag = false;
slot = noone;
isVisible = true;
range = 25;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
		var arm = instance_create_depth(x,y,-1,gunArm2);
		newBot.slot1 = arm;
		arm.body = newBot;
	
	} else {
		var arm2 = instance_create_depth(x,y,1,gunArm2);
		newBot.slot2 = arm2;
		arm2.body = newBot;
	}
}