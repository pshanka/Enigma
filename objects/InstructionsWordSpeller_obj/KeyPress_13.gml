/// @description go to the next room
//stop all of the audio
audio_stop_all();
//goes to the next slide, if applicable
//otherwise, go to the next room
if(gamePaused == 0) {
if(timer < 663) {
	timer = 662;
} else if (timer < 1666) {
	timer = 1665;
} else {
	room_goto(spelling_room);
}
}