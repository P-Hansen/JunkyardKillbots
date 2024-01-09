/// @description Insert description here

scale = 1.2;
image_xscale = scale;
image_yscale = scale;

pressedFlag = false;
slot = noone;
body = tredBot;
refund = 125;
weaponOffsetX = [3, 7, 9, 11];
weaponOffsetY = [5, 5, 5, 5];
damagedFlag = false;

chipSlots = array_create(2, noone);
weaponSlots = array_create(4, noone);
//widgetSlots = array_create(1, noone);

chipSlots[0] = instance_create_layer(290, 215, layer, chipSlot);
chipSlots[0].x -= 1000;
chipSlots[1] = instance_create_layer(310, 215, layer, chipSlot);
chipSlots[1].x -= 1000;

weaponSlots[0] = instance_create_layer(200, 215, layer, weaponSlot);
weaponSlots[0].x -= 1000;
weaponSlots[1] = instance_create_layer(220, 215, layer, weaponSlot);
weaponSlots[1].x -= 1000;
weaponSlots[2] = instance_create_layer(240, 215, layer, weaponSlot);
weaponSlots[2].x -= 1000;
weaponSlots[3] = instance_create_layer(260, 215, layer, weaponSlot);
weaponSlots[3].x -= 1000;

//widgetSlots[0] = instance_create_layer(170, 215, layer, widgetSlot);
//widgetSlots[0].x -= 1000;