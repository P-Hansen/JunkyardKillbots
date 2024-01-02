/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Minefield"
description = "Enemies:\n -Mines\n -Soldiers";
selectedFlag = false;
enemySprites = [sprMine, sprSoldierIdle];
numberOfEnemies = 2+1;
enemyPool = [mine, mine, soldier];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmMinefield;