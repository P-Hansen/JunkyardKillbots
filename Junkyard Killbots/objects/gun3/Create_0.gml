/// @description Insert description here

scale = 1;
image_xscale = scale;
image_yscale = scale;

damage = 300;
body = noone;

swingFlag = false;
endAngle = 90;
rotateSpeed = 40;
target = noone;
accuracy = 1;

cooldown = game_get_speed(gamespeed_fps)*random_range(0.6,0.8);
alarm[1] = cooldown