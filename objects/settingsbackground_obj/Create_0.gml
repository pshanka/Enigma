/// @description initializes all of the variables
//0 is for volume
//1 is for fullscreen
globalvar settingsType;
settingsType = 0;
audio_stop_all();
audio_play_sound(volume_snd,1.0,0);
if(setFullscreen == 1) {
	image_index = 1;
} else {
	image_index = 0;
}