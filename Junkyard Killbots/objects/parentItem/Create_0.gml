/// @description Insert description here

pressedFlag = false;
slot = noone;
hoverFlag = false;
hoverCounter = 0;
description = "placeholder text that is really long so I can see how the word wrap looks when it's really long and shit";
stackCount = 0;
range = 0;
cost = 100;
upgrade = noone;

modifierFunction = function(newBot){
	newBot.image_xscale += 1;
	newBot.image_yscale += 1;
}