/// @description goes to the game screen when the timer runs up
//increments the timer
if(gamePaused == 0) {
++timer;
//goes to the next frame
if(timer == 450) {
	audio_stop_all();
	image_index = 1;
	audio_play_sound(cannonblasterinstructions_snd2,1.0,0);
}
//goes to the next frame
if(timer == 945) {
	audio_stop_all();
	image_index = 2;
	audio_play_sound(cannonblasterinstructions_snd3,1.0,0);
}
}