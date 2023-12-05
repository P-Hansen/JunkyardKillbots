/// @description fire dmg

if (instance_place(x, y, obj_flame)){
	hp -= 10-fireResistance;
	flashTimer = 5;
	audio_play_sound(sfxHit, 0, 0);
	dmgNumber(10, x, y);
}

alarm[1] = game_get_speed(gamespeed_fps)*random_range(0.4, 0.6);