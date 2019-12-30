/// @description goes back to the main puzzle
if(gamePaused == 0) {
audio_pause_all()
room_goto(mainPuzzle);
}