/// @description Insert description here

scale = 1.2;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
body = bigHoverBot;
refund = 100;
weaponOffsetX = [6,10];
weaponOffsetY = [5,5];

chipSlots = array_create(4, noone);
weaponSlots = array_create(2, noone);
//widgetSlots = array_create(1, noone);

chipSlots[0] = instance_create_layer(250, 215, layer, chipSlot);
chipSlots[0].x -= 1000;
chipSlots[1] = instance_create_layer(270, 215, layer, chipSlot);
chipSlots[1].x -= 1000;
chipSlots[2] = instance_create_layer(290, 215, layer, chipSlot);
chipSlots[2].x -= 1000;
chipSlots[3] = instance_create_layer(310, 215, layer, chipSlot);
chipSlots[3].x -= 1000;

weaponSlots[0] = instance_create_layer(200, 215, layer, weaponSlot);
weaponSlots[0].x -= 1000;
weaponSlots[1] = instance_create_layer(220, 215, layer, weaponSlot);
weaponSlots[1].x -= 1000;

//widgetSlots[0] = instance_create_layer(170, 215, layer, widgetSlot);
//widgetSlots[0].x -= 1000;