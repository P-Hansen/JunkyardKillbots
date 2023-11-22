/// @description Insert description here

hp = 400;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

image_index = irandom_range(0, sprite_get_number(sprite_index));
state = states.idle;

sprites[states.idle] = sprTeslaTowerSmall;