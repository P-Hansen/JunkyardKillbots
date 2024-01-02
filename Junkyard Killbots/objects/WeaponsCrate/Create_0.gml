/// @description Insert description here

//image_blend = c_red;

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

size = 1;//random_range(0.7,1);
image_xscale = size;
image_yscale = size;

state = states.idle;
sprites[states.idle] = sprCrate;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;