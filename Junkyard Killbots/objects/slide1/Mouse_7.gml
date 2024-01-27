/// @description Insert description here

if(!position_meeting(mouse_x, mouse_y, self)){
	//click outside slide
	instance_destroy(self);
} else {
	//click slide
	if(image_index == image_number - 1){
		instance_destroy(self);
	}
	
	image_index += 1;
}



