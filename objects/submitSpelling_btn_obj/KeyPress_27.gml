///@description stops all of the audio and goes back to the main puzzle
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the main room
room_goto(mainPuzzle);
}