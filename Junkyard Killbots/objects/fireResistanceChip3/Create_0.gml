/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 0;
description = "Fire resistance chip, heal 50% from fire damage";
stackCount = 0;
range = 0;
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.fireResistance += 15;
}