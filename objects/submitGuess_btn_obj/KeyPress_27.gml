///@description stops all audio and goes to tghe main navigation room
if(gamePaused == 0) {
audio_stop_all();
room_goto(mainPuzzle);
}