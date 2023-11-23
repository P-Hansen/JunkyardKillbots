/// @description Insert description here

//global.scrapTotal += irandom_range(5, 15);
missionController.enemiesKilled += 1;
missionController.scrapFound += irandom_range(5, 15);

var roll = irandom_range(0, 100);
if (roll <= 25){
	var newItem = choose(attackSpeedUpChip1, speedUpChip1, club1Item, hammer1Item, gunArmItem1, gun1Item, sawItem1, armorChip1, criticalStrikeChip1);
	pushToInventory(newItem);
	array_push(missionController.itemsFound, newItem);
}