/// @description Insert description here

//global.scrapTotal += irandom_range(5, 15);
missionController.enemiesKilled += 1;
var finalScrapTotal = round(irandom_range(1, 5)*global.scavengerBonus);
missionController.scrapFound += finalScrapTotal;
global.scrapTotal += finalScrapTotal;
//displaying numbers
var numberText = instance_create_depth(x, y, -5, scrapNumber);
numberText.amount = finalScrapTotal;

var roll = irandom_range(0, 100);
if (roll <= 10){
	var newItem = randomItem();
	pushToInventory(newItem);
	array_push(missionController.itemsFound, newItem);
	showItemFound(newItem, x, y);
}