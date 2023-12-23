/// @description Insert description here
// You can write your code in this editor

scale = 1.5;
image_xscale = scale;
image_yscale = scale;

item = noone;
stackCount = 0;
numberOfBites = 0;

function chew(){
	numberOfBites = 8;
	alarm[1] = game_get_speed(gamespeed_fps)*0.2;
}