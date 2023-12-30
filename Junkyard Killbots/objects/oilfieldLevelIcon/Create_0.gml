/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Oilfield"
description = "-Tanks\n-Mines";
selectedFlag = false;
enemySprites = [sprTank, sprMine];
numberOfEnemies = 2+1;

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmOilfield;