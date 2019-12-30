/// @description goes up one slot
if(gamePaused == 0) {
if(settingsType == 1) {
	settingsType = 0;
}
//play the sound
audio_stop_all();
audio_play_sound(volume_snd,1.0,0);
}