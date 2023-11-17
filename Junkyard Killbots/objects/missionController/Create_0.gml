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

//enemy unit spawn
for(var i = 3*global.difficultyLevel; i > 0; i--;){
	shuffled = array_shuffle(global.enemyPool);
	var newEnemy = array_first(shuffled);
	xSpawn = irandom_range(room_width/4, room_width);
	ySpawn = irandom_range(0, room_height)
	instance_create_layer(xSpawn, ySpawn, layer, newEnemy);
}