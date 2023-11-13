/// @description 

if (state == states.idle){
	 sprite_index = sprites[states.idle];
}

//death
if (hp <= 0){
	instance_destroy(self);
}
