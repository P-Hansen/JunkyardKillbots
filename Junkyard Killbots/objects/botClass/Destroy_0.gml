/// @description Insert description here

//destroy portrit
instance_destroy(creatorSlot);
//destroy weapons
instance_destroy(slot1);
instance_destroy(slot2);

global.scrapTotal += scrapRefundOnDeath;
missionController.botsLost += 1;