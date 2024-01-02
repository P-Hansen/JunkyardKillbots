/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Sewer"
description = "Enemies:\n -Roaches\n -Slimes\n -Mutants";
selectedFlag = false;
enemySprites = [sprRoach, sprBigRoach, sprSlime, sprMutantIdle];
numberOfEnemies = 5;
enemyPool = [slime, slime, roachGroup, mutant];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmSewer;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");