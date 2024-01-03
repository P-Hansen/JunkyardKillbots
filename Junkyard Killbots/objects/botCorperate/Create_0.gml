/// @description Insert description here

maxHp = 600;
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
baseSightRange = 70;
baseArmor = 1;
critChance = 0;

creatorSlot = noone;

slot1 = instance_create_depth(x,y,-1,clubBlack);
slot1.body = self;
slot2 = instance_create_depth(x,y,1,clubBlack);
slot2.body = self;

scrapRefundOnDeath = 50;
healAmount = 0;
numberOfItemsToSave = 0;
state = states.attack;
fireResistance = 0;
seeTraps = false;
doNotAttack = false;
tauntRange = 100;
eyeX = 2;
eyeY = -4;
bubble = noone;


alarm[1] = game_get_speed(gamespeed_fps)*1;
alarm[4] = game_get_speed(gamespeed_fps)*0.5;