/// @description Insert description here

hp = 50;
target = noone;
maxSpeed = random_range(0.3,0.7);
speed = maxSpeed;
range = 20;
damage = 10;
flashTimer = 0;
baseArmor = 1;

alarm[1] = game_get_speed(gamespeed_fps)*2;
alarm[3] = game_get_speed(gamespeed_fps)*0.5;