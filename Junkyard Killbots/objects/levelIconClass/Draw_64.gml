/// @description Insert description here

//printing hover box
if(selectedFlag == true){
	var spriteHeight = sprite_get_height(sprTextBox);
	var spriteWidth = sprite_get_width(sprTextBox)-10;
	var bottomY = (y*2) + spriteHeight;
	var stringHeight = string_height_ext(description, 15, spriteWidth);
	if(bottomY < room_height*2){
		//var textBox = draw_sprite(sprTextBox, 0, (x*2)-145, y*2);
		draw_sprite_stretched(sprTextBox, 0, (x*2)-140, (y*2), spriteWidth, stringHeight);
		draw_text_ext((x*2)-140, (y*2), description, 15, spriteWidth);
	} else {
		draw_sprite_stretched(sprTextBox, 0, (x*2)-145, (y*2)-stringHeight, spriteWidth, stringHeight);
		//var textBox = draw_sprite(sprTextBox, 0, (x*2)-145, (y*2)-spriteHeight);
		draw_text_ext((x*2)-140, (y*2)-stringHeight, description, 15, spriteWidth);
	}

}




