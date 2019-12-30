/// @description go to the game when the timer runs out
//increment the timer for reading the instructions
if(gamePaused == 0) {
++timer;
//goes to the next frame
if(timer == 1419) {
	audio_stop_all();
	audio_play_sound(leftrightupdowninstructions_snd2,1.0,0);
	image_index = 1;
}
//goes to the next frame
if(timer == 2060) {
	audio_stop_all();
	audio_play_sound(leftrightupdowninstructions_snd3,1.0,0);
	image_index = 2;
}
}