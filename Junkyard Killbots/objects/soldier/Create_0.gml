/// @description Insert description here

hp = 400;
target = noone;
maxSpeed = random_range(0.3,0.7);
speed = maxSpeed;
range = 75;
sightRange = 125;
damage = 100;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprSoldierIdle;
sprites[states.wander] = sprSoldierWalk;
sprites[states.alert] = sprSoldierWalk;
sprites[states.attack] = sprSoldierFire;

alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps)*2;
target = noone;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;