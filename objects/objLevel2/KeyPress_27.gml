/// @description exits from the minigame and returns to the mainPuzzle screen
if(gamePaused == 0) {
audio_pause_all()
room_goto(mainPuzzle);
}