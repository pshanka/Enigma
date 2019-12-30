/// @description goes to the instructions room
//stops all of the audio
if(gamePaused == 0) {
audio_stop_all();
//go to the instructions room
room_goto(leftrightupdowninstructions);
}