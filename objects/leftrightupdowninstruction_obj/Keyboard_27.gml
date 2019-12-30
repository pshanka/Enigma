/// @description go to the main navigation menu
//stop all of the audio
if(gamePaused == 0) {
audio_stop_all();
//go to the main navigation menu
room_goto(mainPuzzle);
}