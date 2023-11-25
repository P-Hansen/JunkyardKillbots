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

//shows items collected during the level
function showItems(element, i){
	var sprite = object_get_sprite(element);
	var width = sprite_get_width(sprite);
	if(i < 10){
		if(width <= 16){
			draw_sprite(sprite, 0, 175+i*18, 145);
		} else {
			draw_sprite_ext(sprite, 0, 175+i*18, 145, 0.5, 0.5, 0, c_white, 1);
		}
	} else {
		if(width <= 16){
			draw_sprite(sprite, 0, -5+(i*18), 163);
		} else {
			draw_sprite_ext(sprite, 0, -5+(i*18), 163, 0.5, 0.5, 0, c_white, 1);
		}
	}
}

//shows blueprints found during the level
function showBlueprints(element, i){
	var sprite = object_get_sprite(element);
	draw_sprite(sprite, 0, 175+i*18, 220);
}

//checking if bots are on screen
function botsOffscreen(){
	var nearestBot = instance_nearest(room_width/2, room_height/2, botClass);
	if (instance_exists(nearestBot) and nearestBot.x > room_width+20){
		return true;
	} else {
		return false;
	}
}