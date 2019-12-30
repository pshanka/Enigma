///@description After the beep, the player can now enter the directional keys
if(gamePaused == 0) {
audio_play_sound(Beep,0,0);
freeze = 0; // Player can enter keys when freeze is set to 0
}