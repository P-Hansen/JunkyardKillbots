/// @description swing away

if (swingFlag == true) {
	image_angle += rotateSpeed;
	if image_angle <= endAngle {
        swingFlag = false;
    }
}

//reset to starting pos
if (swingFlag == false and image_angle < 0) {
	image_angle -= rotateSpeed;
}