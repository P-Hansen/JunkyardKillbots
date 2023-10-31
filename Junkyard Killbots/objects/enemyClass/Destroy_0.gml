/// @description Insert description here

global.scrapTotal += irandom_range(5, 15);

var roll = random_range(0, 100);
if (roll <= 25){
	pushToInventory(choose(attackSpeedUpChip, attackSpeedUpAccuracydownChip, speedUpAttackSpeedDownChip, gunArmItem));
}