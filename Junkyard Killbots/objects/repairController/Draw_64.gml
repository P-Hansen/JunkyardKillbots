/// @description blueprint text

if(showBlueprintsFlag){
	draw_text(340, 140, "Cost: " + string(playerInventory.blueprints[0].cost));
	draw_text(620, 140, playerInventory.blueprints[0].stats);
}


