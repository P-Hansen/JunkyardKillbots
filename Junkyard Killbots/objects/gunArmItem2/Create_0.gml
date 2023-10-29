/// @description Insert description here
image_index = 1;

pressedFlag = false;
slot = noone;
isVisible = true;
range = 25;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
	newBot.slot1 = instance_create_depth(x,y,-1,gunArm2);
	} else {
		newBot.slot2 = instance_create_depth(x,y,1,gunArm2);
	}
}