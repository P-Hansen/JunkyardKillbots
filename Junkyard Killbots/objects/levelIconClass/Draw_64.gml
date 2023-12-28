/// @description Insert description here

//printing hover box
if(selectedFlag == true){
	var spriteHeight = sprite_get_height(sprTextBox2);
	var spriteWidth = sprite_get_width(sprTextBox2)-10;
	var bottomY = (y*2) + spriteHeight/2;
	var stringHeight = string_height_ext(description, 15, spriteWidth);
	if(bottomY < room_height*2){ //top
		if(x > room_width/2){ //right
			draw_sprite_stretched(sprTextBox2, 0, (x*2)-(140+90), (y*2)-30, spriteWidth, stringHeight);
			draw_text_ext((x*2)-(140+90), (y*2)-30, description, 15, spriteWidth);
		} else { //left
			draw_sprite_stretched(sprTextBox2, 0, (x*2)+50, (y*2)-30, spriteWidth, stringHeight);
			draw_text_ext((x*2)+50, (y*2)-30, description, 15, spriteWidth);
		}
	} else { //bottom
		if(x > room_width/2){ //right
			draw_sprite_stretched(sprTextBox2, 0, (x*2)-145, (y*2)-stringHeight, spriteWidth, stringHeight);
			draw_text_ext((x*2)-140, (y*2)-stringHeight, description, 15, spriteWidth);
		} else { //left
			draw_sprite_stretched(sprTextBox2, 0, (x*2), (y*2)-stringHeight, spriteWidth, stringHeight);
			draw_text_ext((x*2), (y*2)-stringHeight, description, 15, spriteWidth);
		}
	}

}




