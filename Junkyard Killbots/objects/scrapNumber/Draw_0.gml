/// @description Insert description here

/*
if(amount < 500){
	textColour = c_white;
} else if(amount > 500){
	textColour = c_yellow;
} else if(amount > 1000){
	textColour = c_red;
}
*/

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

if(amount > 0){
	draw_text_transformed_color(x, y, "+"+string(amount)+" Scrap", 0.5, 0.5, 0, textColour, textColour, textColour, textColour, 1);
} else {
	//for negative values
	draw_text_transformed_color(x, y, string(amount)+" Scrap", 0.5, 0.5, 0, textColour, textColour, textColour, textColour, 1);
}
y -= 0.7;

draw_set_halign(fa_top);
draw_set_halign(fa_left);