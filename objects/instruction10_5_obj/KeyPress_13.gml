/// @description goes to the game screen
// stop all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the next frame (if possible)
//otherwise go to the game room
if(timer < 1666) {
	timer = 1665;
} else if (timer < 2451) {
	timer = 2450;
} else {
	room_goto(room10_5);
}
}