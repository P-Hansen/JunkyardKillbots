/// @description Insert description here

hp = 600;
target = noone;
maxSpeed = random_range(0.9,1.1);
speed = maxSpeed;
baseRange = 10;
range = baseRange;
baseDamage = 100;
damage = baseDamage;
flashTimer = 0;
baseCooldown = 0;
baseAccuracy = 0;
baseSightRange = 60;
baseArmor = 1;
critChance = 0;

creatorSlot = noone;
slot1 = noone;
slot2 = noone;

scrapRefundOnDeath = 50;

alarm[1] = game_get_speed(gamespeed_fps)*1;