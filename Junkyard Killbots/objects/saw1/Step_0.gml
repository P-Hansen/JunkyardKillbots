/// @description swing away

image_angle -= rotateSpeed;

//attack swing
if (swingFlag == true) {
		if (instance_exists(target)){
			var roll = irandom_range(1,100);
			var finalDamage = 0;
			if (roll <= body.critChance){
				finalDamage = ((damage + irandom_range(-2,2))*2)*target.baseArmor;
			} else {
				finalDamage = (damage + irandom_range(-2,2))*target.baseArmor;
			}
			target.hp -= finalDamage;
			target.flashTimer = 1;
			audio_play_sound(sfxHit, 0, 0, 0.2);
			dmgNumber(finalDamage, target.x, target.y);
		}
        swingFlag = false;
}