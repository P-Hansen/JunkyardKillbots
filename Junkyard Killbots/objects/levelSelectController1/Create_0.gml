/// @description Insert description here
// You can write your code in this editor

levels = [];

for (var i = 0; i < instance_number(levelIconClass); i++){
    levels[i] = instance_find(levelIconClass, i);
}

function allLevelsFinished(array){
	status = true;
	
	for (var i = 0; i < array_length(array); i++){
		status = array[i].defeatedFlag;
		if(status == false){
			status = false;
			break;
		}
	}
	return status
}

levels = [labLevelIcon, labLevelIcon, oilfieldLevelIcon, oilfieldLevelIcon, oilfieldLevelIcon, scrapyardLevelIcon, mineLevelIcon];

levelsShuffled = array_shuffle(levels);

coordinates = [[384,56], [384,160], [224,48], [288,112], [288,208], [112,96], [176,176]];

array_foreach(levelsShuffled, function func(element, index){
	instance_create_depth(coordinates[index][0], coordinates[index][1], 1, element);
});