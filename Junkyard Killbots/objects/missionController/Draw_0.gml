/// @description game over screen

if(gameOver == true){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var oldFont = draw_get_font();
	draw_set_font(fontWin);

	draw_set_color(c_black);
	draw_text(room_width/2+3, room_height/2+3, "Game Over");
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "Game Over");

	draw_set_font(oldFont)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}