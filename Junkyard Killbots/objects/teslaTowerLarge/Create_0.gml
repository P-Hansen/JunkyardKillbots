/// @description Insert description here

hp = 800;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;

image_index = irandom_range(0, sprite_get_number(sprite_index));
state = states.idle;

sprites[states.idle] = sprTeslaTowerLarge;