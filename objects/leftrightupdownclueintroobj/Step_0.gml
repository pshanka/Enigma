/// @description finishes the game
//increments the timer
if(gamePaused == 0) {
++timer;
//if the audio is finished, go back to the main puzzle
if(timer == 416) {
	audio_stop_all();
	room_goto(mainPuzzle);
}
}