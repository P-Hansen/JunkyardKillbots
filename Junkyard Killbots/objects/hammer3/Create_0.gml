/// @description Insert description here

scale = 1;
image_xscale = scale;
image_yscale = scale;

damage = 600;
body = noone;

swingFlag = false;
endAngle = -135;
rotateSpeed = -35;
target = noone;

cooldown = game_get_speed(gamespeed_fps)*random_range(1.9,2.1);
alarm[1] = cooldown;