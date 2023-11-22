/// @description swing away

image_angle -= rotateSpeed;

//attack swing
if (swingFlag == true) {
		if (instance_exists(target)){
			var finalDamage = damage + irandom_range(-2,2);
			target.hp -= finalDamage;
			target.flashTimer = 1;
			audio_play_sound(sfxHit, 0, 0, 0.2);
			dmgNumber(finalDamage, target.x, target.y);
		}
        swingFlag = false;
}