/// @description increments the timer and goes to the next screen when the audio stops
//increments the timer
if(gamePaused == 0) {
++timer;
//if the timer reaches this many frames, stop all of the audio and then go to the instructions room
if(timer==942) {
	//stop all of the audio
	audio_stop_all();
	//go to the instructions room
	room_goto(leftrightupdowninstructions);
}
}