///@description moves the player left
if(gamePaused == 0) {
if(touchingRight == 0) {
	lvl1x += movementSpeed;
	//animates the image
	--frames;
	if(frames < 0) {
		frames = numFramesAnimate;
		if(image_index == 7) {
			image_index = 6;
		} else {
			image_index = 7;
		}
	}
} else {
	//sets the image to the dafault screen
	image_index = 6;
}
}