/// @description goes back to the main navigation menu
//stop all of the remaining audio
if(gamePaused == 0) {
audio_stop_all();
//go to the main room
room_goto(mainPuzzle);
}