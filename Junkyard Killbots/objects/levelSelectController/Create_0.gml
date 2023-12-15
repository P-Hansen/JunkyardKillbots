/// @description Insert description here
// You can write your code in this editor

levels = [];

for (var i = 0; i < instance_number(levelIconClass); i++){
    levels[i] = instance_find(levelIconClass, i);
}

function allLevelsFinished(array){
	status = false;
	
	for (var i = 0; i < array_length(array); i++){
		if(status == false){
			status = array[i].defeatedFlag;
		}
	}
	return status
}