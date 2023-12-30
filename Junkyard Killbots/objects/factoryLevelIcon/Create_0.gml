/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Factory"
description = "Enemies:\n -Construction arm\n -Experimental scientists";
selectedFlag = false;
enemySprites = [sprRobotArmIdle, sprSoldierFire];
numberOfEnemies = 2+1;
enemyPool = [soldier, soldier, robotArm];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmFactory;