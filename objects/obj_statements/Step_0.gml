/// @description checks if the shortcuts have been pressed
//if the r key has been held for 5 seconds, send back to instructions
if(gamePaused == 0) {
if(keyboard_check(82) || keyboard_check(114)) {
	++timerr;
	if(timerr == 300) {
		audio_stop_all();
		room_goto(cannonblasterinstructions_room);
	}
} else {
	timerr = 0;
}
}