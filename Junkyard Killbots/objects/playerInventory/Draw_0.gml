/// @description money totals

//money total
if(room_get_name(room) != "rmStartMenu"){
	if(redTextFrames > 0){
		//draw_text_color(95, 12, "Scrap: " + string(global.scrapTotal), c_red, c_red, c_red, c_red, 1);
		draw_text_transformed_color(48, 6, "Scrap: " + string(global.scrapTotal), 0.5, 0.5, 0, c_red, c_red, c_red, c_red, 1);
		redTextFrames--;
	} else {
		//draw_text(95, 12, "Scrap: " + string(global.scrapTotal));
		draw_text_transformed_color(48, 6, "Scrap: " + string(global.scrapTotal), 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
	}
}