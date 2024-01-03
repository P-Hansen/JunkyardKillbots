/// @description barb wire

if (instance_place(x, y, barbWire)){
	var finalDamage = 10;
	hp -= finalDamage;
	if(finalDamage < 0){
		var number = instance_create_depth(x, y, -1, damageNumber);
		number.textColour = c_lime;
	} else {
		flashTimer = 5;
		audio_play_sound(sfxHit, 0, 0);
		dmgNumber(finalDamage, x, y);
	}
}

alarm[4] = game_get_speed(gamespeed_fps)*0.5;