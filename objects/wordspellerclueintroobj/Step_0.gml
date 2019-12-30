/// @description when the audio is finished, send back to the main room
//increments the timer
if(gamePaused == 0) {
++timer;
//when the timer reaches a certain frame, send back to the main room
if(timer == 634) {
	//stop all of the remaining audio
	audio_stop_all();
	//go to the main puzzle room
	room_goto(mainPuzzle);
}
}