/// @description Insert description here

damage = 0;
critChance = 0;
scale = 0.1;

myTarget = noone;
spreadInterval = 1;

image_xscale = scale;
image_yscale = scale;

image_angle = irandom_range(0,360);
x += irandom_range(-2,2);
y += irandom_range(-2,2);

damageTimer = true;
alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps)*0.4;