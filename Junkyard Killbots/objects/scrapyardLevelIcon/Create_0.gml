/// @description

difficulty = 0;
spacing = 7;

flashTimer = 0;
fade = 1;
defeatedFlag = false;

name = "Junkyard"
description = "Enemies:\n -none\n\nNo enemies will spawn here. Each level only adds more junk where scrap and potential items can be found.";
selectedFlag = false;
enemySprites = [];
numberOfEnemies = 1;
enemyPool = [trashPile, largeJunk, barrel];

button = instance_create_depth(room_width-50, room_height-25, -50, launchButton);
button.level = rmScrapyard;

uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");