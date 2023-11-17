/// @description end screen stats

//if (levelEndFlag == true){
objectsKilled = 0;
enemiesKilled = 0;
botsLost = 0;
scrapFound = 0;
itemsFound = [attackSpeedUpChip, club1Item, hammer1Item, club1Item, club1Item, club1Item, club1Item, club1Item, club1Item, club1Item, club1Item, club1Item, club1Item];
blueprintsFound = [minibotBlueprint, botBlueprint];
levelEndFlag = false;

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

//}
