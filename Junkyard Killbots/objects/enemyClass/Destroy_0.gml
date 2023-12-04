/// @description Insert description here

//global.scrapTotal += irandom_range(5, 15);
missionController.enemiesKilled += 1;
var finalScrapTotal = irandom_range(5, 15)*global.scavengerBonus;
missionController.scrapFound += finalScrapTotal;

var roll = irandom_range(0, 100);
if (roll <= 25){
	var newItem = randomItem();
	pushToInventory(newItem);
	array_push(missionController.itemsFound, newItem);
}