/// @description Insert description here

hp = 300;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

image_index = choose(0,1,2,3);

state = states.idle;

sprites[states.idle] = sprJunkBike;
