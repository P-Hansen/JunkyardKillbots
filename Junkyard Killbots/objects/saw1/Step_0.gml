/// @description swing away

image_angle -= rotateSpeed;

//attack swing
if (swingFlag == true) {
		if (instance_exists(target)){
			target.hp -= damage;
			target.flashTimer = 1;
			audio_play_sound(sfxHit, 0, 0, 0.2);
			dmgNumber(damage, target.x, target.y);
		}
        swingFlag = false;
}