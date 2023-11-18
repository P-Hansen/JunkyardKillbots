/// @description end screen stats

if (levelEndFlag == true){

draw_text(room_width/2-90, 30,
	"Enemies destroyed: "+string(enemiesKilled)+
	"\nObjects destroyed: "+string(objectsKilled)+
	"\nBots lost: "+string(botsLost)+
	"\nScrap found: "+string(scrapFound)+
	"\nItems found:"+
	"\n\n\nBlueprint found:"
);

array_foreach(itemsFound, showItems);
array_foreach(blueprintsFound, showBlueprints);

}
