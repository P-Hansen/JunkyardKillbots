/// @description show selection

//show bot selected
if(instance_exists(playerInventory.robots[botSelection].bots)){
	var sprite = object_get_sprite(playerInventory.robots[botSelection].bots.body);
	draw_sprite_ext(sprite, 0, room_width/2, room_height/2, 5,5,0,c_white,1);
	showBlueprintsFlag = false;
	buildButton.x = 1000;
	arrowL.x = 1000;
	arrowR.x = 1000;
} else {//show blueprints
	draw_sprite_ext(object_get_sprite(playerInventory.blueprints[0].object_index), 0, room_width/2, room_height/2, 5,5,0,c_white,1);
	showBlueprintsFlag = true;
	buildButton.x = room_width/2;
	arrowL.x = (room_width/2)-80;
	arrowR.x = (room_width/2)+80;
}