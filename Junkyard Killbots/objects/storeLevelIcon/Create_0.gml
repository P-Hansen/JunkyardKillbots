/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = true;

name = "Item Store"
description = "A great place to purchase items you may need.\n\nLeaving the store will trigger level upgrades";
selectedFlag = false;
enemySprites = [];
numberOfEnemies = 1;
enemyPool = [roachGroup];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmStore;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");