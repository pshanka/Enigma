///@description Exits from the minigame and returns to mainPuzzle screen
if(gamePaused == 0) {
audio_pause_all()
room_goto(mainPuzzle);
}