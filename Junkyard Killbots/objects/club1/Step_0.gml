/// @description swing away

//attack swing
if (swingFlag == true) {
	image_angle += rotateSpeed;
	if (image_angle <= endAngle) {
		if (instance_exists(target)){
			var finalDmage = damage*target.baseArmor;
			target.hp -= finalDmage;
			target.flashTimer = 5;
			audio_play_sound(sfxHit, 0, 0);
			dmgNumber(finalDmage, target.x, target.y);
		}
        swingFlag = false;
    }
}

//reset to starting pos
if (swingFlag == false and image_angle < 0) {
	image_angle -= rotateSpeed;
}