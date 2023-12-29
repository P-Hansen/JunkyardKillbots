/// @description Insert description here

//printing hover box
if(selectedFlag == true){
	draw_sprite_stretched(sprTextBox2, 0, room_width*2-200, 0, 200, 512);
	draw_sprite(sprite_index, image_index, room_width*2-100, 50);
	
	draw_set_halign(fa_center);
	var defaultFont = draw_get_font();
	draw_set_font(fontLevelHeading);
	draw_text(room_width*2-100, 85, name);
	draw_set_halign(fa_left);
	
	array_foreach(enemySprites, function(element, i){
		var xSpacing = room_width*2-200;
		draw_sprite(element, 0, xSpacing + (200/numberOfEnemies)*(i+1), 130);
	})
	
	draw_set_font(defaultFont);
	draw_text_ext(room_width*2-195, 150, description, 15, 190);
}




