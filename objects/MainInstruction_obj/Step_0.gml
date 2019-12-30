/// @description plays the audio an switches the screen when necessary
//increements the timer every second of the game
if(gamePaused == 0) {
++timer;
//goes to the next page for animations
if(timer == 2023) {
	//goes to the next page of animations
	image_index = 1;
	//goes to the next audio clip
	//first stops all of the remaining audio
	audio_stop_all();
	//then play the next clip
	audio_play_sound(mainInstructions_snd2,1.0,0);
}
//goes to the third page for animations
if(timer == 3856) {
	//goes to the next page of animations
	image_index = 2;
	//goes to the next audio clip
	//first stops all of the remaining audio
	audio_stop_all();
	//then plays the next clip
	audio_play_sound(mainInstructions_snd3,1.0,0);
}
//goes to the forth page for animations
if(timer == 6376) {
	//goes to the next page of animations
	image_index = 3;
	//goes to the next audio clip
	//first stops all of the remaining audio
	audio_stop_all();
	//then play the next clip
	audio_play_sound(mainInstructions_snd4,1.0,0);
}
}