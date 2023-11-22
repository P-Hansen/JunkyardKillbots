/// @description gun kickback

//image_angle = body.direction;
if (instance_exists(body)){
	direction = body.direction;
}

//attack swing
if (swingFlag == true) {
	image_angle += rotateSpeed;
	if (image_angle >= endAngle) {
        swingFlag = false;
    }
}

//reset to starting pos
if (swingFlag == false and instance_exists(body) and image_angle > body.direction) {
	image_angle -= rotateSpeed;
}