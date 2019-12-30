///@description moves the player up
if(gamePaused == 0) {
if(touchingUp == 0) {
	lvl1y -= movementSpeed;
	//animates the image
	--frames;
	if(frames < 0) {
		frames = numFramesAnimate;
		if(image_index == 4) {
			image_index = 5;
		} else {
			image_index = 4;
		}
	}
} else {
	//sets the image o the deafult screen
	image_index = 3;
}
}