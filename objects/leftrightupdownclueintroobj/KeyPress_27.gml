/// @description goes to the main navigation
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the main puzzle room
room_goto(mainPuzzle);
}