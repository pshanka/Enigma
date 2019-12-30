/// @description goes down one slot
if(gamePaused == 0) {
if(settingsType == 0) {
	settingsType = 1;
}
audio_stop_all();
//play the sound
if(setFullscreen) {
	audio_play_sound(fullscreen_snd,1.0,0);
} else {
	audio_play_sound(notfullscreen_snd,1.0,0);
}
}