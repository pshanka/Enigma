/// @description goes to the main room
//stop all of the audio
if(gamePaused == 0) {
audio_stop_all();
//go back to the main room
room_goto(mainPuzzle);
}