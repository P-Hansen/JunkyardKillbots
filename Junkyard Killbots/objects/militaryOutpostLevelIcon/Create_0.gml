/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Military Outpost"
description = "Enemies:\n -Mines\n -Soldiers\n -Guard towers";
selectedFlag = false;
enemySprites = [sprMine, sprSoldierIdle, sprGuardTower];
numberOfEnemies = 3+1;
enemyPool = [mine, soldier, soldier];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmMilitaryOutpost;