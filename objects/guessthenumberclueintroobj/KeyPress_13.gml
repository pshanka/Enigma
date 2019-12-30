/// @description go back to the main puzzle when you press enter
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes back to the main puzzle
room_goto(mainPuzzle);
}