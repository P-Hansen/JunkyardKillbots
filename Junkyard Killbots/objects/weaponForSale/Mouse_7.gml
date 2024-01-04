/// @description Insert description here

if(sold == false){
	pushToInventory(object);
	showItemFound(object, x, y);
	sold = true;
	
	instance_destroy(self);
}

