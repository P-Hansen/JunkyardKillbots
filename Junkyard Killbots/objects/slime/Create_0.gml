/// @description Insert description here

hp = 800;
target = noone;
maxSpeed = random_range(0.3,0.7);
speed = maxSpeed;
range = 50;
damage = 150;
flashTimer = 0;
baseArmor = 1;

alarm[1] = game_get_speed(gamespeed_fps)*1.5;
alarm[3] = game_get_speed(gamespeed_fps)*0.5;