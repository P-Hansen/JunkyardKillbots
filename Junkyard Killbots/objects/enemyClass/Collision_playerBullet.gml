/// @description Insert description here
// You can write your code in this editor

var finalDamage = other.damage*baseArmor;
hp -= finalDamage;
flashTimer = 5;
audio_play_sound(sfxHit, 0, 0);
instance_destroy(other);
dmgNumber(finalDamage, x, y);
