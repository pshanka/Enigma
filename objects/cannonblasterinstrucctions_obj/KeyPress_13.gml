/// @description goes to the game screen
// stop all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the next frame (if possible)
//otherwise go to the game room
if(timer < 450) {
	timer = 449;
} else if (timer < 945) {
	timer = 944;
} else {
	room_goto(room0);
}
}