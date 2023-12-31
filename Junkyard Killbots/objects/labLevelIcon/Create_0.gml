/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Laboratory"
description = "Enemies:\n -Experimental scientists\n\n\ndefeating this level unlocks a new bot design.";
selectedFlag = false;
enemySprites = [sprScientistFire];
numberOfEnemies = 1+1;
enemyPool = [scientist, barrel];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmLab;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");