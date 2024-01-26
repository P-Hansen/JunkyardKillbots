/// @description Insert description here

windowOpen = true;

if(!instance_exists(closeButton)){
	//close
	closeButton = instance_create_depth(room_width/2+100, room_height/2-50, depth-1, closeSettingsButton);
	closeButton.settings = self;
	//volume
	volumeButton = instance_create_depth(room_width/2-75, room_height/2-18, depth-1, volumeSlider);
	//fullscreen
	fullScreenButton = instance_create_depth(room_width/2-75, room_height/2+15, depth-1, fullscreenButton);
	
}