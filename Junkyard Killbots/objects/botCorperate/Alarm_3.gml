/// @description taunt

with(enemyClass){
	var distnace = point_distance(x, y, other.x, other.y);
	if(distnace < other.tauntRange){
		target = other;
	}
}

bubble = instance_create_depth(x+eyeX+5, y+eyeY-5, -5, speachBubble);
audio_play_sound(sfxDestroy, 0, 0);
alarm[3] = game_get_speed(gamespeed_fps)*2;

