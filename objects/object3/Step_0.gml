/// @description checks if the shortcuts have been pressed
//if the r key has been held for 5 seconds, send back to instructions
if(gamePaused == 0) {
if(keyboard_check(82) || keyboard_check(114)) {
	++timerr;
	if(timerr == 300) {
		audio_stop_all();
		room_goto(leftrightupdowninstructions);
	}
} else {
	timerr = 0;
}
//if the e key has been held for 5 seconds, reset the room
if(keyboard_check(101) || keyboard_check(69)) {
	++timere;
	if(timere == 300) {
		//wow this was a lot easier than what I thought it would be
		audio_stop_all();
		index = 0;
		alarm_set(0,25);
	}
} else {
	timere = 0;
}
}