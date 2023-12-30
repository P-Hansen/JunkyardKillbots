/// @description Insert description here

hp = 700;
target = noone;
maxSpeed = random_range(0.6,0.9);
speed = maxSpeed;
range = 5;
sightRange = 150;
damage = 150;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprMutantIdle;
sprites[states.wander] = sprMutantWalk;
sprites[states.alert] = sprMutantWalk;
sprites[states.attack] = sprMutantAttack;

alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps)*2;
target = noone;
hitFlag = false;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;