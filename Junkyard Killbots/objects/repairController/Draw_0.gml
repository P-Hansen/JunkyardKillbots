/// @description show selection

//show bot selected
if(instance_exists(playerInventory.robots[botSelection].bots)){
	//drawing the weapon in the back slot
	if(instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[1].item)){
		var sprite2 = object_get_sprite(playerInventory.robots[botSelection].bots.weaponSlots[1].item.botWeapon);
		draw_sprite_ext(sprite2, 0, room_width/2+35, room_height/2+25, 3.75, 3.75, 0, c_white, 1);
	}
	var sprite = object_get_sprite(playerInventory.robots[botSelection].bots.body);
	draw_sprite_ext(sprite, 0, room_width/2, room_height/2, 5,5,0,c_white,1);
	showBlueprintsFlag = false;
	buildButton.x = 1000;
	arrowL.x = 1000;
	arrowR.x = 1000;
	//drawing front weapon slot
	if(instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[0].item)){
		var sprite2 = object_get_sprite(playerInventory.robots[botSelection].bots.weaponSlots[0].item.botWeapon);
		draw_sprite_ext(sprite2, 0, room_width/2+15, room_height/2+25, 3.75, 3.75, 0, c_white, 1);
	}
} else {//show blueprints
	draw_sprite_ext(object_get_sprite(playerInventory.blueprints[blueprintSelection].object_index), 0, room_width/2, room_height/2, 5,5,0,c_white,1);
	showBlueprintsFlag = true;
	buildButton.x = room_width/2;
	arrowL.x = (room_width/2)-80;
	arrowR.x = (room_width/2)+80;
}

/*
//updating parts
if(slot1 != noone){
	slot1.x = x+3;
	slot1.y = y+5;
}
if(slot2 != noone){
	slot2.x = x+7;
	slot2.y = y+5;
}
*/