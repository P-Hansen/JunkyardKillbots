/// @description AoE enemy damge

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, enemyClass, enemiesInRange, false);
var finalDamage = 0;
var roll = irandom_range(1,100);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	finalDamage = damage / ((distance_to_object(target)*.5)+1);
	if (roll <= critChance){
		finalDamage = (finalDamage*2)*target.baseArmor;
	} else {
		finalDamage = finalDamage*target.baseArmor;
	}
	target.hp -= finalDamage;
	target.flashTimer = 5;
	audio_play_sound(sfxHit, 0, 0);
	dmgNumber(finalDamage, target.x, target.y);
}

ds_list_destroy(enemiesInRange);