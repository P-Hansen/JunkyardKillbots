/// @description destroy when off screen

if(x > room_width+20 and y < -20){
	instance_destroy(self);
}