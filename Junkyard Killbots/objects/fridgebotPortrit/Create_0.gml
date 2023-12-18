/// @description Insert description here

scale = 1.2;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
body = fridgebot;
refund = 75;
weaponOffsetX = [1,9];
weaponOffsetY = [5,5];

chipSlots = array_create(1, noone);
weaponSlots = array_create(2, noone);
//widgetSlots = array_create(1, noone);

chipSlots[0] = instance_create_layer(280, 215, layer, chipSlot);
chipSlots[0].x -= 1000;

weaponSlots[0] = instance_create_layer(230, 215, layer, weaponSlot);
weaponSlots[0].x -= 1000;
weaponSlots[1] = instance_create_layer(250, 215, layer, weaponSlot);
weaponSlots[1].x -= 1000;

//widgetSlots[0] = instance_create_layer(170, 215, layer, widgetSlot);
//widgetSlots[0].x -= 1000;