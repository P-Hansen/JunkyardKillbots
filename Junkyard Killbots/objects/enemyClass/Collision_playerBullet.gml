/// @description Insert description here
// You can write your code in this editor

var roll = irandom_range(1,100);
var finalDamage = 0;
if (roll <= other.critChance){
	finalDamage = (other.damage*2)*baseArmor;
} else {
	finalDamage = other.damage*baseArmor;
}
hp -= finalDamage;
flashTimer = 5;
audio_play_sound(sfxHit, 0, 0);
instance_destroy(other);
dmgNumber(finalDamage, x, y);
