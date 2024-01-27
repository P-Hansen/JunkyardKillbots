/// @description Insert description here

depth -= 10;

levels = [];

for (var i = 0; i < instance_number(levelIconClass); i++){
    levels[i] = instance_find(levelIconClass, i);
}

function allLevelsFinished(array){
	status = true;
	
	for (var i = 0; i < array_length(array); i++){
		if(instance_exists(array[i])){
			status = array[i].defeatedFlag;
			if(status == false){
				status = false;
				break;
			}
		}
	}
	return status
}

