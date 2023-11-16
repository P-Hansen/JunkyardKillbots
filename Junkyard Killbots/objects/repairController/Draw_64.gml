/// @description blueprint text

if(showBlueprintsFlag){
	draw_text(340, 150, "Cost: " + string(playerInventory.blueprints[blueprintSelection].cost));
	draw_text(620, 150, playerInventory.blueprints[blueprintSelection].stats);
}


