/// @description increments the step and then goes to the main menu when finished
//increments the point timer (so it is the timer. Woops!)
if(gamePaused == 0) {
++points;
//sends you back when the audio is finished
if(points == 533) {
	//stops all the audio
	audio_stop_all();
	//goes back to the main puzzle
	room_goto(mainPuzzle);
}
}