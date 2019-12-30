///@description moves the player down
if(gamePaused == 0) {
if(touchingDown == 0) {
	lvl1y += movementSpeed;
	//animates the image
	--frames;
	if(frames < 0) {
		frames = numFramesAnimate;
		if(image_index == 2) {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}
} else {
	//sets the image to the default screen
	image_index = 0;
}
}