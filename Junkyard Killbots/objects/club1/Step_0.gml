/// @description swing away

//attack swing
if (swingFlag == true) {
	image_angle += rotateSpeed;
	if (image_angle <= endAngle and instance_exists(target)) {
		target.hp -= damage;
		target.flashTimer = 5;
		audio_play_sound(sfxHit, 0, 0);
        swingFlag = false;
		dmgNumber(damage, target.x, target.y);
    }
}

//reset to starting pos
if (swingFlag == false and image_angle < 0) {
	image_angle -= rotateSpeed;
}