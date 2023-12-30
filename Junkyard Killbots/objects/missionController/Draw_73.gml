/// @description level end/game over screen

if (levelEndFlag == true){
	draw_sprite_stretched(sprBlueBox, 0, room_width/2-100, 25, 210, 215);
	//level end stats text
	draw_text(room_width/2-90, 30,
		"Enemies destroyed: "+string(enemiesKilled)+
		"\nObjects destroyed: "+string(objectsKilled)+
		"\nBots lost: "+string(botsLost)+
		"\nScrap found: "+string(scrapFound)+
		"\nItems found:"
	);
	//show blueprints stats if any are found
	if (array_length(blueprintsFound) > 0){
		draw_text(room_width/2-90, 30, "\n\n\n\n\n\n\nBlueprint found:");
		array_foreach(blueprintsFound, showBlueprints);
	}
	//show item icons
	array_foreach(itemsFound, showItems);
}


if(gameOver == true){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var oldFont = draw_get_font();
	draw_set_font(fontWin);

	draw_set_color(c_black);
	draw_text(room_width/2+3, room_height/2+3, "Game Over");
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "Game Over");

	draw_set_font(oldFont)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}