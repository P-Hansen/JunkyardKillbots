/// @description Insert description here

hp = 4000;
target = noone;
maxSpeed = random_range(0.3,0.7);
speed = maxSpeed;
range = 5;
sightRange = 125;
damage = 100;
flashTimer = 0;
baseArmor = 1;

state = states.idle;

sprites[states.idle] = sprRobotArmIdle;
sprites[states.wander] = sprRobotArmIdle;
sprites[states.alert] = sprRobotArmIdle;
sprites[states.attack] = sprRobotArmAttack;

alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps)*2;
target = noone;
hitFlag = false;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;