/// @description blueprint text

if(showBlueprintsFlag){
	if(redTextFrames > 0) {
		draw_text_color(340, 150, "Cost: " + string(playerInventory.blueprints[blueprintSelection].cost), c_red, c_red, c_red, c_red, 1);
		draw_text(620, 150, playerInventory.blueprints[blueprintSelection].stats);
		redTextFrames--;
	} else {
		draw_text(340, 150, "Cost: " + string(playerInventory.blueprints[blueprintSelection].cost));
		draw_text(620, 150, playerInventory.blueprints[blueprintSelection].stats);
	}
}


