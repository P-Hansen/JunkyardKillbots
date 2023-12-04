/// @description Insert description here

hp = 2500;
target = noone;
maxSpeed = random_range(0.3,0.7);
speed = maxSpeed;
range = 5;
sightRange = 200;
damage = 200;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprCaveMonsterIdle;
sprites[states.wander] = sprCaveMonsterWalk;
sprites[states.alert] = sprCaveMonsterWalk;
sprites[states.attack] = sprCaveMonsterAttack;

alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps)*2;
target = noone;
hitFlag = false;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;