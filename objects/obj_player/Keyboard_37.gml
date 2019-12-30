///@description moves the player left
if(gamePaused == 0) {
if(touchingLeft == 0) {
	lvl1x -= movementSpeed;
	//animates the iamge
	--frames;
	if(frames < 0) {
		frames = numFramesAnimate;
		if(image_index == 8) {
			image_index = 9;
		} else {
			image_index = 8;
		}
	}
} else {
	//set the animation to the default screen
	image_index = 8;
}
}