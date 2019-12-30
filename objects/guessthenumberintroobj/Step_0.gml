/// @description incremeents the timer and goes to the next room when the audio stops
//increments the timer
if(gamePaused == 0) {
++timer;
//when the audio stops, go to the next room
if(timer == 939) {
	//stops all of the audio
	audio_stop_all();
	//goes to the next room
	room_goto(guessingroominstructions);
}
}