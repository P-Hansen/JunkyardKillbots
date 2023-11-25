/// @description Insert description here

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprMinecart;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;