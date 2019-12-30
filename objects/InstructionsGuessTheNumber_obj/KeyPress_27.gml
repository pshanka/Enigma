/// @description goes back to the main navigation menu
//stops all of the remaining audio
if(gamePaused == 0) {
audio_stop_all();
room_goto(mainPuzzle);
}