/// @description increments the timer. Once the timer runs out, go to the next room
//increments the timer
if(gamePaused == 0) {
++timer;
//once the timer reaches a certain number of frames, go to the next room
if(timer == 854) {
	//stop all of the remaining audio
	audio_stop_all();
	//go to the next room
	room_goto(instructions10_5room);
}
}