/// @description Insert description here

hp = 600;
target = noone;
maxSpeed = 0;
speed = maxSpeed;
range = 0;
damage = 0;
flashTimer = 0;
baseArmor = 1;

scale = random_range(0.6,1.2);
image_xscale = scale;
image_yscale = scale;

state = states.idle;

sprites[states.idle] = sprTrashPile;