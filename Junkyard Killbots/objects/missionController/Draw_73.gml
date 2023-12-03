/// @description end screen stats

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
