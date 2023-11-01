/// @description on hover and stack count

//printing hover box
if(hoverCounter < 0 and hoverFlag == true){
	var spriteHeight = sprite_get_height(sprTextBox);
	var spriteWidth = sprite_get_width(sprTextBox)-10;
	var bottomY = (y*2) + spriteHeight;
	if(bottomY < room_height*2){
		var textBox = draw_sprite(sprTextBox, 0, (x*2)-145, y*2);
		draw_text_ext((x*2)-140, (y*2), description, 15, spriteWidth);
	} else {
		var textBox = draw_sprite(sprTextBox, 0, (x*2)-145, (y*2)-spriteHeight);
		draw_text_ext((x*2)-140, (y*2)-spriteHeight, description, 15, spriteWidth);
	}

}

if(hoverFlag == true){
	hoverCounter--;
}