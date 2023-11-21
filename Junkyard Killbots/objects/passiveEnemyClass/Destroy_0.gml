/// @description Insert description here

//global.scrapTotal += irandom_range(5, 15);
missionController.objectsKilled += 1;
missionController.scrapFound += irandom_range(5, 15);

var roll = random_range(0, 100);
if (roll <= 25){
	var newItem = choose(attackSpeedUpChip, attackSpeedUpAccuracydownChip, speedUpAttackSpeedDownChip, gunArmItem1, club1Item, hammer1Item);
	pushToInventory(newItem);
	array_push(missionController.itemsFound, newItem);
}