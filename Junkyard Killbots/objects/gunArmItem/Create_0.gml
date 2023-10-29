/// @description Insert description here

pressedFlag = false;
slot = noone;
isVisible = true;
range = 15;

modifierFunction = function(newBot){
	if (newBot.slot1 == noone){
	newBot.slot1 = instance_create_depth(x,y,-1,gunArm);
	} else {
		newBot.slot2 = instance_create_depth(x,y,1,gunArm);
	}
}