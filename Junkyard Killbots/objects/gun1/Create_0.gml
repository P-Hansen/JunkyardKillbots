/// @description Insert description here

scale = 1.25;
image_xscale = scale;
image_yscale = scale;

damage = 150;
body = noone;

swingFlag = false;
endAngle = 90;
rotateSpeed = 40;
target = noone;
accuracy = 10;

cooldown = game_get_speed(gamespeed_fps)*random_range(0.9,1.1);
alarm[1] = cooldown