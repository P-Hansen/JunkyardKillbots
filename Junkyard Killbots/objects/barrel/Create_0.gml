/// @description Insert description here

image_index = choose(0,1);

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

scale = 0.9;
image_xscale = scale;
image_yscale = scale;

state = states.idle;

sprites[states.idle] = sprBarrel;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;