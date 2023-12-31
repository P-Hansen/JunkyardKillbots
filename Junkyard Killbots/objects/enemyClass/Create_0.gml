/// @description Insert description here
// You can write your code in this editor

state = states.idle;

sprites[states.idle] = sprScientistIdle;
sprites[states.wander] = sprScientistWalk;
sprites[states.alert] = sprScientistWalk;
sprites[states.attack] = sprScientistFire;

flashTimer = 0;
baseArmor = 1;

alarm[3] = game_get_speed(gamespeed_fps)*0.5;