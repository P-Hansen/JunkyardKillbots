/// @description Insert description here

pressedFlag = false;
slot = noone;
isVisible = true;

modifierFunction = function(newBot){
	newBot.baseCooldown += -0.5;
	newBot.baseAccuracy += 15;
}