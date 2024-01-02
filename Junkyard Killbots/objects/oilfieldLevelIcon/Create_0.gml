/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Oilfield"
description = "Enemies:\n -Tanks\n -Mines";
selectedFlag = false;
enemySprites = [sprTank, sprMine];
numberOfEnemies = 2+1;
enemyPool = [tank, teslaTowerSmall, mine];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmOilfield;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");