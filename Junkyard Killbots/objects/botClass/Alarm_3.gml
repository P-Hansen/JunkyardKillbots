/// @description taunt

tauntRange = 100;

with(enemyClass){
	var distnace = point_distance(x, y, other.x, other.y);
	if(distnace < other.tauntRange){
		target = other;
	}
}

audio_play_sound(sfxHit, 0, 0);
alarm[3] = game_get_speed(gamespeed_fps)*1;

