/// @description Insert description here

//global.scrapTotal += irandom_range(5, 15);
missionController.enemiesKilled += 1;
var finalScrapTotal = irandom_range(5, 15)*global.scavengerBonus;
missionController.scrapFound += finalScrapTotal;
//displaying numbers
var numberText = instance_create_depth(x, y, -5, scrapNumber);
numberText.amount = finalScrapTotal;

var roll = irandom_range(0, 100);
if (roll <= 35){
	var newItem = randomItem();
	pushToInventory(newItem);
	array_push(missionController.itemsFound, newItem);
}