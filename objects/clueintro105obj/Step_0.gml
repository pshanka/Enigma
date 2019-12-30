/// @description when the audio stops send back to the main menu
//increments the timer
if(gamePaused == 0) {
++timer;
//goes to the main room if the audio stops
if(timer == 621) {
	//stops all of the remaining audio
	audio_stop_all();
	//goes back to the main puzle room
	room_goto(mainPuzzle);
}
}