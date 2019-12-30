/// @description go to game when time ends
//increments the timer
if(gamePaused == 0) {
++timer;
//goes to the next screen
if(timer == 1133) {
	audio_stop_all();
	audio_play_sound(guessthenumberinstructions_snd2,1.0,0);
	image_index = 1;
}
//goes to the next screen
if(timer == 1734) {
	audio_stop_all();
	audio_play_sound(guessthenumberinstructions_snd3,1.0,0);
	image_index = 2;
}
}