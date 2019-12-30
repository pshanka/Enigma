/// @description for the timer
//increments the timer by one
++timer;
//if the timer runs out of time, then go to the next room
if(gamePaused == 0) {
if(timer == 663) {
	audio_stop_all();
	audio_play_sound(wordspellerinstructionssnd_2,1.0,0);
	image_index = 1;
}
//goes to the third room
if(timer == 1666) {
	audio_stop_all();
	audio_play_sound(wordspellerinstructionssnd_3,1.0,0);
	image_index = 2;
}
}