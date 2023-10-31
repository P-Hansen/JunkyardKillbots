/// @description Insert description here

pressedFlag = false;
slot = noone;
isVisible = true;

modifierFunction = function(newBot){
	newBot.baseCooldown += +0.25;
	newBot.speed += 0.1;
}