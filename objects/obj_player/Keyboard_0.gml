///@description changes animation to stationary
if(gamePaused == 0) {
if(image_index < 3) {
	image_index = 0;
} else if (image_index < 6) {
	image_index = 3;
} else if (image_index < 8) {
	image_index = 6;
} else {
	image_index = 8;
}
//resets the frames for animation
frames = 1;
}