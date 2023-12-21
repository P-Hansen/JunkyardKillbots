//destroy portrit
//instance_destroy(creatorSlot);
//destroy weapons
instance_destroy(slot1);
instance_destroy(slot2);
instance_destroy(slot3);
instance_destroy(slot4);

var numberText = instance_create_depth(x, y, -5, scrapNumber);
numberText.amount = -scrapRefundOnDeath;
global.scrapTotal -= scrapRefundOnDeath;
missionController.scrapFound -= scrapRefundOnDeath;
missionController.botsLost += 1;