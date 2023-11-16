
if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

draw_self();
gpu_set_fog(false, c_white, 0, 0);

var subImage = round(hp/100);
draw_sprite_ext(sprHpBar, subImage, x, y+18, 0.6, 0.6, 0, c_white, 1);