/// @description Insert description here

if(sold == false and global.scrapTotal >= 100){
	pushToInventory(object);
	showItemFound(object, x, y);
	sold = true;
	global.scrapTotal -= 100;
	
	instance_destroy(self);
}

