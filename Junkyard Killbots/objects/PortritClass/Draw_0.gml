/// @description Insert description here

if(instance_exists(weaponSlots[0].item)){
	var sprite = weaponSlots[0].item.sprite_index;
	draw_sprite_stretched(sprite, 0, x+11, y-8, 8, 8);
}
if(instance_exists(weaponSlots[1].item)){
	var sprite = weaponSlots[1].item.sprite_index;
	draw_sprite_stretched(sprite, 0, x+11, y+1, 8, 8);
}

draw_self();