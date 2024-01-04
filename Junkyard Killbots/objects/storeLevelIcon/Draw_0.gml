/// @description draw chevrons

//outline shader
if(selectedFlag == true){
	shader_set(OutlineShader);

	// grab stuff, pointers
	var texture = sprite_get_texture(sprite_index, image_index);
	var texture_Width  = texture_get_texel_width(texture);
	var texture_Height = texture_get_texel_height(texture);

	// put stuff in -> vec2 2 values
	shader_set_uniform_f(uniForm_Handle, texture_Width, texture_Height );
	draw_self();
	shader_reset();
	
} else {
	draw_self();
}
/*
if(image_index == 0){
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
}

//white mask over icons and chevrons that fades away to show upgrade
if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, fade);
	
	if(image_index == 0){
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
	}
	
	gpu_set_fog(false, c_white, 0, 0);
	fade -= 0.02;
	flashTimer--;
}
*/