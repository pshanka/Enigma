/// @description changes fullscreen
if(gamePaused == 0) {
audio_stop_all();
if(settingsType == 1) {
	if(setFullscreen == false) {
		setFullscreen = true;
		image_index = 1;
	} else {
		setFullscreen = false;
		image_index = 0;
	}
	window_set_fullscreen(setFullscreen);
	if(setFullscreen) {
		audio_play_sound(fullscreen_snd,1.0,0);
	} else {
		audio_play_sound(notfullscreen_snd,1.0,0);
	}
}
//play the sound
//changes the volume
if(masterVolume < 1 && settingsType == 0) {
	masterVolume += 0.1;
	audio_master_gain(masterVolume);
	audio_play_sound(jump_snd,1.0,0);
} else if (settingsType == 0) {
	audio_play_sound(jump_snd,1.0,0);
}
}