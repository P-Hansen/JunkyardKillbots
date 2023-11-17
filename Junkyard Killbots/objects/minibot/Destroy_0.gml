/// @description Insert description here

//destroy portrit
instance_destroy(creatorSlot);
//destroy weapons
instance_destroy(slot1);

global.scrapTotal += scrapRefundOnDeath;
missionController.botsLost += 1;