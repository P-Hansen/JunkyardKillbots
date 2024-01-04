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

levels = [factoryLevelIcon, mcBurgerLevelIcon, militaryOutpostLevelIcon, minefieldLevelIcon, sewerLevelIcon,
		factoryLevelIcon, mcBurgerLevelIcon, militaryOutpostLevelIcon, minefieldLevelIcon, sewerLevelIcon];
levelsShuffled = array_shuffle(levels);
array_resize(levelsShuffled, 6);
array_push(levelsShuffled, storeLevelIcon);

coordinates = [[362,105], [352,192], [280,40], [256,128], [176,56], [176,184], [112,112]];

array_foreach(levelsShuffled, function func(element, index){
	instance_create_depth(coordinates[index][0], coordinates[index][1], 1, element);
});

