/// @description Insert description here
// You can write your code in this editor

if(instance_exists(playerInventory.robots[botSelection].bots)){
	var sprite = object_get_sprite(playerInventory.robots[botSelection].bots.body);
	draw_sprite_ext(sprite, 0, room_width/2, room_height/2, 5,5,0,c_white,1);
} else {
	draw_sprite_ext(object_get_sprite(playerInventory.blueprints[0].object_index), 0, room_width/2, room_height/2, 5,5,0,c_white,1);
}