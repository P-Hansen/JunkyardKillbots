/// @description Insert description here
// You can write your code in this editor

scale = 0.5;
image_xscale = scale;
image_yscale = scale;

damage = 800;
body = noone;
target = noone;

cooldown = game_get_speed(gamespeed_fps)*1;
alarm[1] = cooldown*2;