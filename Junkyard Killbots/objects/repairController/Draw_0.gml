/// @description show selection

repairButton.x = 1000;

//show bot selected
if(instance_exists(playerInventory.robots[botSelection].bots)){
	//showing repair button
	if(playerInventory.robots[botSelection].bots.damagedFlag == true){
		draw_set_halign(fa_center);
		draw_text_transformed(room_width/2 + 100, 90, "$" + string(playerInventory.robots[botSelection].bots.refund), 0.5, 0.5, 0 );
		draw_set_halign(fa_left);
		repairButton.x = room_width/2 + 100;
	}
	
	//drawing the weapon in the back slot
	//if(instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[1].item)){
	//	var sprite2 = object_get_sprite(playerInventory.robots[botSelection].bots.weaponSlots[1].item.botWeapon);
	//	draw_sprite_ext(sprite2, 0, room_width/2+35, room_height/2+25, 3.75, 3.75, 0, c_white, 1);
	//}
	var weaponsArray = playerInventory.robots[botSelection].bots.weaponSlots;
	var length = array_length(weaponsArray);
	if(length/2 >= 1){
		array_foreach(weaponsArray, displayFunction, length/2, length/2);
	}
	
	var sprite = object_get_sprite(playerInventory.robots[botSelection].bots.body);
	draw_sprite_ext(sprite, 0, room_width/2, room_height/2-20, 5,5,0,c_white,1);
	showBlueprintsFlag = false;
	buildButton.x = 1000;
	arrowL.x = 1000;
	arrowR.x = 1000;
	//drawing front weapon slot
	//if(instance_exists(playerInventory.robots[botSelection].bots.weaponSlots[0].item)){
	//	var sprite2 = object_get_sprite(playerInventory.robots[botSelection].bots.weaponSlots[0].item.botWeapon);
	//	draw_sprite_ext(sprite2, 0, room_width/2+15, room_height/2+25, 3.75, 3.75, 0, c_white, 1);
	//}
	
	//display weapons
	if(length/2 >= 1){
		array_foreach(weaponsArray, displayFunction, 0, length/2);
	} else {
		array_foreach(weaponsArray, displayFunction);
	}
	
} else {//show blueprints
	draw_sprite_ext(object_get_sprite(playerInventory.blueprints[blueprintSelection].object_index), 0, room_width/2, room_height/2-20, 5,5,0,c_white,1);
	showBlueprintsFlag = true;
	buildButton.x = room_width/2;
	arrowL.x = (room_width/2)-80;
	arrowR.x = (room_width/2)+80;
}