/// @description for suspect 3
if(gamePaused == 0) {
audio_stop_all();
//show that you found the suspect
audio_play_sound(found_suspect,1,0);
//go into the suspect revealed page
room_goto(SuspectRevealed);
}