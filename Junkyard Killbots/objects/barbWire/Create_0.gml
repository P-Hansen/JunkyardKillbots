/// @description Insert description here

image_index = irandom_range(0,2);
image_xscale = choose(-1, 1);
image_yscale = choose(-1, 1);

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprBarbWire;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;


