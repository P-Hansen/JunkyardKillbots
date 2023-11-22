/// @description Insert description here

if(amount < 500){
	textColour = c_white;
} else if(amount > 500){
	textColour = c_yellow;
} else if(amount > 1000){
	textColour = c_red;
}

draw_text_transformed_color(x, y, amount, 0.5, 0.5, 0, textColour, textColour, textColour, textColour, 1);

y -= 0.7;
