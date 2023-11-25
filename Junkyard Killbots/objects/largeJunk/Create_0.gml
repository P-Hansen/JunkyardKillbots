/// @description Insert description here

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

image_index = irandom_range(0,10);
image_angle = random_range(-20,20);
size = random_range(0.7,1);
image_xscale = size;
image_yscale = size;

state = states.idle;

sprites[states.idle] = sprLargeJunk;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;