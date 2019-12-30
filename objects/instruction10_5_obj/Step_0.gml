/// @description goes to the game screen when the timer runs up
//increments the timer
if(gamePaused == 0) {
++timer;
//goes to the next frame
if(timer == 1666) {
	audio_stop_all();
	image_index = 1;
	audio_play_sound(instructions10_5_snd2,1.0,0);
}
//goes to the next frame
if(timer == 2451) {
	audio_stop_all();
	image_index = 2;
	audio_play_sound(instructions10_5_snd3,1.0,0);
}
}