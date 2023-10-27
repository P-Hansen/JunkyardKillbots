/// @description Insert description here
// You can write your code in this editor


hp = hp - other.damage;
flashTimer = 5;
audio_play_sound(sfxHit, 0, 0);
instance_destroy(other);