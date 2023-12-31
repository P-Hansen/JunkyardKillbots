/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Military Outpost"
description = "Enemies:\n -Mines\n -Soldiers\n -Tanks";
selectedFlag = false;
enemySprites = [sprMine, sprSoldierIdle, sprTank];
numberOfEnemies = 2+1;
enemyPool = [mine, tank];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmMilitaryOutpost;