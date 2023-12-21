/// @description Insert description here

//destroy portrit
//instance_destroy(creatorSlot);
//destroy weapons
instance_destroy(slot1);

var numberText = instance_create_depth(x, y, -5, scrapNumber);
numberText.amount = -scrapRefundOnDeath;
global.scrapTotal -= scrapRefundOnDeath;
missionController.scrapFound -= scrapRefundOnDeath;
missionController.botsLost += 1;