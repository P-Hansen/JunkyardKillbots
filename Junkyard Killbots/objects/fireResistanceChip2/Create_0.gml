/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 0;
description = "Fire resistance chip, take 100% less fire damage";
stackCount = 0;
range = 0;
cost = 100;
upgrade = fireResistanceChip3;

modifierFunction = function(newBot){
	newBot.fireResistance += 10;
}