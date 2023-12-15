/// @description death

if (hp <= 0){
	var boom = instance_create_depth(x, y, -1, explosion1);
	boom.damage = 200;
	instance_destroy(self);
}



