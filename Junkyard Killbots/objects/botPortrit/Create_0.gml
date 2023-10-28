/// @description Insert description here

pressedFlag = false;
slot = noone;
body = bot;

chipSlots = array_create(2, noone);
weaponSlots = array_create(2, noone);

weaponSlots[0] = instance_create_layer(200, 215, layer, itemSlot);
weaponSlots[0].x -= 1000;
weaponSlots[1] = instance_create_layer(220, 215, layer, itemSlot);
weaponSlots[1].x -= 1000;