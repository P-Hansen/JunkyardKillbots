/// @description Insert description here

//checking if bots are on screen
var nearestBot = instance_nearest(room_width+100, room_height/2, botClass);
if (instance_exists(nearestBot) and nearestBot.x > room_width+20){
	instance_destroy(nearestBot, false);
}








