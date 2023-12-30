/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Level Name"
description = "-enemy 1\n  -mines\n  -a third thing";
selectedFlag = false;
enemySprites = [sprSoldierFire, sprBarrel];
numberOfEnemies = 2+1;

button = instance_create_depth(room_width-100, room_height-30, -50, launchButton);
button.level = rmScrapyard;