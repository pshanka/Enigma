/// @description counts the number of steps. If the number of steps ever equals 300, then send back to the instructions
//note: resets the game
//checks for the letter r
if(gamePaused == 0) {
if(keyboard_check(114) || keyboard_check(82)) {
	//checks if r has been pressed for 5 seconds
	++timerr;
	if(timerr == 300) {
		//goes to instructions
		audio_stop_all();
		room_goto(instructions10_5room);
		keyboard_string = "";
	}
} else {
	//resets the timer
	timerr = 0;
}
}