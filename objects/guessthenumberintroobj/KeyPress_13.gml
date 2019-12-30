/// @description goes to the next room
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the next room
room_goto(guessingroominstructions);
}