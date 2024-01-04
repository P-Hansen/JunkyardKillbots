/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Corperate HQ"
description = "Enemies:\n -Worker bots";
selectedFlag = false;
enemySprites = [sprCorperateBotIdle];
numberOfEnemies = 1+1;
enemyPool = [botCorperate];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmCorperateHQ;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");