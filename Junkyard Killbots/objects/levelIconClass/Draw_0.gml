/// @description draw chevrons

draw_self();

//silver chevrons (1-4)
if(difficulty < 5) {
	for(var i = 0; i < difficulty; i++){
		draw_sprite(sprChevron, 0, x-25,y-30+i*spacing);
	}
} else { //gold chevrons (5+)
	for(var i = 0; i < difficulty-4; i++){
		draw_sprite(sprChevron, 1, x-25,y-30+i*spacing);
	}
}