
//instance exists that can handle "noone"
function instance_exists2(object){
	if(object == noone){
		return false;
	} else {
		return instance_exists(object);
	}
}

//returns a random level 1 item, used on enemy death and at game start in inventory
function randomItem(){
return choose(attackSpeedUpChip1, speedUpChip1, club1Item, hammer1Item, gunArmItem1, gun1Item,
	sawItem1, armorChip1, criticalStrikeChip1, scavengerChip1, sensorRangeChip1, granadeLauncherItem1, 
	selfRepairChip1, fireResistanceChip1, bombItem1, tauntChip1, flameThrowerItem1);
}

function randomWeapon(){
return choose(club1Item, hammer1Item, gunArmItem1, gun1Item, sawItem1, granadeLauncherItem1, bombItem1, flameThrowerItem1);
}

function randomChip(){
return choose(attackSpeedUpChip1, speedUpChip1, armorChip1, criticalStrikeChip1, scavengerChip1, sensorRangeChip1, 
	selfRepairChip1, fireResistanceChip1, tauntChip1);
}

function randomWeapon2(){
	return choose(club2Item, hammer2Item, gunArmItem2, gun2Item, sawItem2, granadeLauncherItem2);
}

//returns a random blueprint that is not already owned by the player
function randomBlueprint(){
	var blueprintsArray = [hoverbotBlueprint, tredBotBlueprint, bigHoverBotBlueprint, fridgebotBlueprint];
	var blueprintsOwned = playerInventory.blueprints;
	for(i = 0; i < array_length(blueprintsOwned); i++){
		index = array_get_index(blueprintsArray, blueprintsOwned[i].object_index);
		if(index != -1){
			array_delete(blueprintsArray, index, 1);
		}
	}
	var shuffled = array_shuffle(blueprintsArray);
	//if there are no more bots to unlock will cause an error
	return shuffled[0];
}

//level start voice lines
function randomLevelVoiceLine(){
	var line = choose(sfxAhahahah, sfxAhahahahCough, sfxIllShowThemAll, sfxStealingMyInventions, sfxStolenFromMe, sfxTeachTheMeaningOfFear);
	audio_play_sound(line, 10, false);
}

//random repair lines
function randomRepairLines(){
	if(global.voiceCooldown <= 0){
		var line = choose(sfxConnectedToTheRaygun, sfxHoldStillASec, sfxImprovement, sfxImprovementWonderbar, sfxMarvoulous, sfxTweakHereMurderThere, sfxTweakHereMurderThere2, sfxWhatINeeded);
		audio_play_sound(line, 10, false);
		global.voiceCooldown = 0;
		global.voiceCooldown += audio_sound_length(line)+random_range(1, 12);
	}
}

//random bot fix lines
function randomBotFixLines(){
	if(global.voiceCooldown <= 0){
		var line = choose(sfxGoodAsNew, sfxGoodAsNew2, sfxGoodAsNew3);
		audio_play_sound(line, 10, false);
		global.voiceCooldown = 0;
		global.voiceCooldown += audio_sound_length(line)+random_range(1, 12);
	}
}