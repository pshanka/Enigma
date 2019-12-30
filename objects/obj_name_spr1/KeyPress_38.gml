/// @description goes up the list
if(gamePaused == 0) {
if(image_index > 0) {
	--image_index;
}
//plays the correct sound
audio_stop_all();
if(image_index == 0) {
	audio_play_sound(start_snd,1.0,0);
} else if (image_index == 1) {
	audio_play_sound(settings_snd,1.0,0);
} else if (image_index == 2) {
	audio_play_sound(instructions_snd,1.0,0);
}
}