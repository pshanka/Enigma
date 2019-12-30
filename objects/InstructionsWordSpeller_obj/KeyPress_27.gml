/// @description goes back to the main navigation menu
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the main navigation room
room_goto(mainPuzzle);
}