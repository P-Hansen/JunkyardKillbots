/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Factory"
description = "Enemies:\n -Construction arm\n -Experimental scientists\n\n\ndefeating this level unlocks a new bot design.";
selectedFlag = false;
enemySprites = [sprRobotArmIdle, sprScientistFire];
numberOfEnemies = 2+1;
enemyPool = [scientist, scientist, robotArm];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmFactory;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");