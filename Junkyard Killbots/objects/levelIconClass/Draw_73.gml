/// @description Insert description here

//printing hover box
if(selectedFlag == true){
	draw_sprite_stretched(sprTextBox2, 0, room_width-100, 0, 100, 512);
	draw_sprite_ext(sprite_index, image_index, room_width-50, 25, 0.5, 0.5, 0, c_white, 1);
	
	draw_set_halign(fa_center);
	var defaultFont = draw_get_font();
	draw_set_font(fontLevelHeading);
	draw_text_transformed(room_width-50, 40, name, 0.5, 0.5, 0);
	draw_set_halign(fa_left);
	
	array_foreach(enemySprites, function(element, i){
		var xSpacing = room_width-100;
		draw_sprite_ext(element, 0, xSpacing + (100/numberOfEnemies)*(i+1), 65, 0.5, 0.5, 0, c_white, 1);
	})
	
	draw_set_font(defaultFont);
	//draw_text_ext(room_width-95, 150, description, 15, 190);
	draw_text_ext_transformed(room_width-95, 75, description, 15, 190, 0.5, 0.5, 0);
	
	button.visibleFlag = true;
}




