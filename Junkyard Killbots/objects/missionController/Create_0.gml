/// @description enemy spawning

shuffled = [];
xSpawn = 0;
ySpawn = 0;

//end of level stats
objectsKilled = 0;
enemiesKilled = 0;
botsLost = 0;
scrapFound = 0;
itemsFound = [];
blueprintsFound = [];
levelEndFlag = false;

//enemy unit spawn
for(var i = 3*global.difficultyLevel; i > 0; i--;){
	shuffled = array_shuffle(global.enemyPool);
	var newEnemy = array_first(shuffled);
	xSpawn = irandom_range(room_width/4, room_width);
	ySpawn = irandom_range(0, room_height)
	instance_create_layer(xSpawn, ySpawn, layer, newEnemy);
}

function showItems(element, i){
	var sprite = object_get_sprite(element);
	if(i < 10){
		draw_sprite(sprite, 0, 175+i*18, 145);
	} else {
		draw_sprite(sprite, 0, -5+(i*18), 163);
	}
}

function showBlueprints(element, i){
	var sprite = object_get_sprite(element);
	draw_sprite(sprite, 0, 175+i*18, 220);

}