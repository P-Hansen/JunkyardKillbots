/// @description Insert description here

maxHp = 400;
hp = maxHp;
target = noone;
maxSpeed = random_range(0.9,1.1);
speed = maxSpeed;
baseRange = 10;
range = baseRange;
baseDamage = 50;
damage = baseDamage;
flashTimer = 0;
baseCooldown = 0;
baseAccuracy = 0;
baseSightRange = 140;
baseArmor = 1;
critChance = 0;

creatorSlot = noone;
slot1 = noone;

scrapRefundOnDeath = 50;
healAmount = 0;
numberOfItemsToSave = 0;
state = states.attack;
fireResistance = 0;
seeTraps = false;

alarm[1] = game_get_speed(gamespeed_fps)*1;