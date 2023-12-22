/// @description money totals

//money total
if(redTextFrames > 0){
	draw_text_color(95, 12, "Scrap: " + string(global.scrapTotal), c_red, c_red, c_red, c_red, 1);
	redTextFrames--;
} else {
	draw_text(95, 12, "Scrap: " + string(global.scrapTotal));
}