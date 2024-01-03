/// @description swing away

//attack swing
if (swingFlag == true) {
	image_angle += rotateSpeed;
	if (image_angle >= endAngle) {
		if (instance_exists(target)){
			var roll = irandom_range(1,100);
			var finalDamage = 0;
			if (roll <= body.critChance){
				finalDamage = (damage*2)*target.baseArmor;
			} else {
				finalDamage = damage*target.baseArmor;
			}
			target.hp -= finalDamage;
			target.flashTimer = 5;
			audio_play_sound(sfxHit, 0, 0);
			dmgNumber(finalDamage, target.x, target.y);
		}
        swingFlag = false;
    }
}

//reset to starting pos
if (swingFlag == false and image_angle > 0) {
	image_angle -= rotateSpeed;
}