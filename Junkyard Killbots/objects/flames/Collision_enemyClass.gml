/// @description 

if(damageTimer == true){
	var roll = irandom_range(1,100);
	var finalDamage = 0;
	if (roll <= critChance){
		finalDamage = (damage*2)*other.baseArmor;
	} else {
		finalDamage = damage*other.baseArmor;
	}
	finalDamage -= irandom_range(40,45);
	other.hp -= finalDamage;
	other.flashTimer = 5;
	audio_play_sound(sfxHit, 0, 0);
	dmgNumber(finalDamage, x, y);
	damageTimer = false;
}