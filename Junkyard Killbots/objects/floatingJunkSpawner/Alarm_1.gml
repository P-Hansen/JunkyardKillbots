/// @description Insert description here
// You can write your code in this editor

var junk = instance_create_depth(x, y+irandom_range(-5,5), 1, smallJunk);
junk.direction = 180;
junk.speed = random_range(0.3, 0.7);


alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,6);


