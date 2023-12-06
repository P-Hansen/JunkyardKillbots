/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 0;
description = "take 50% less fire damage";
stackCount = 0;
range = 0;
cost = 100;
upgrade = fireResistanceChip2;

modifierFunction = function(newBot){
	newBot.fireResistance += 5;
}