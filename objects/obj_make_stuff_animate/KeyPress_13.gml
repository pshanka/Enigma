/// @description goes to the main navigation room
// also stops all narration
if(gamePaused == 0) {
audio_stop_all();
room_goto(mainPuzzle);
}