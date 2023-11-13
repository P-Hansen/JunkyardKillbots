/// @description 

if (state == states.idle){

	 sprite_index = sprites[states.idle];

} else if (state == states.wander){
	
	 sprite_index = sprites[states.wander];

} else if (state == states.attack){
	
	 sprite_index = sprites[states.attack];
	
} else if (state == states.alert){
	
	 sprite_index = sprites[states.alert];
}




//death
if (hp <= 0){
	instance_destroy(self);
}
