/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "McBurger"
description = "Enemies:\n -Tanks\n -Mines";
selectedFlag = false;
enemySprites = [sprTank, sprMine];
numberOfEnemies = 2+1;
enemyPool = [roachGroup];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmMcburger;