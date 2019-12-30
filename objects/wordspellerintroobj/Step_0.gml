/// @description increments the timer. When the audio stops go to the next room
//increments the timer
if(gamePaused == 0) {
++timer;
//when the audio stops go to the next room
if(timer == 771) {
	//stop the audio
	audio_stop_all();
	//go to the next room
	room_goto(wordspellerinstructions_room);
}
}