/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Mine"
description = "Enemies:\n -Rock monsters\n -Large cave monster";
selectedFlag = false;
enemySprites = [sprStoneMonsterAttack, sprCaveMonsterWalk];
numberOfEnemies = 2+1;
enemyPool = [stoneMonster, minecart];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmMine;