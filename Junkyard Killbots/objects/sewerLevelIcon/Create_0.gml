/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Sewer"
description = "Enemies:\n -Slimes\n -Roaches\n -Mutants";
selectedFlag = false;
enemySprites = [sprSlime, sprBigRoach, sprRoach, sprMutantIdle];
numberOfEnemies = 5;
enemyPool = [slime, slime, roachGroup, mutant];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmSewer;