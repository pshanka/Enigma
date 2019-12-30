/// @description stop all the audio and then go to the main instructions
if(gamePaused == 0) {
audio_stop_all();
if(image_index == 0) {
	room_goto(MainInstructions);
} else if (image_index == 1) {
	room_goto(settings);
} else {
	room_goto(instructionsstart);
}
}