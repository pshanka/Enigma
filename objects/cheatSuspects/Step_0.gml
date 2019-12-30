/// @description Insert description here
// You can write your code in this editor
if(gamePaused == 0) {
	if(keyboard_check(74) || keyboard_check(106)) {
		++timerj;
		if(timerj == 300) {
			audio_stop_all();
			audio_play_sound(found_suspect,1,0);
			room_goto(SuspectRevealed);
		}
	} else {
		timerj = 0;
	}
}