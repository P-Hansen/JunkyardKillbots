/// @description Insert description here
// You can write your code in this editor

state = states.idle;

sprites[states.idle] = sprSoldierIdle;
sprites[states.wander] = sprSoldierWalk;
sprites[states.alert] = sprSoldierWalk;
sprites[states.attack] = sprSoldierFire;

flashTimer = 0;
baseArmor = 1;