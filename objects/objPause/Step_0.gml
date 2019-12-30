/// @description pauses if p held for 5 seconds
if(keyboard_check(80) || keyboard_check(112)) {
	if(image_index = 0) ++thisTimer;
}
if(thisTimer == 300) {
	audio_stop_all();
	audio_play_sound(gamePaused_sound,1.0,0);
	thisTimer = 0;
	image_index = 1;
	gamePaused = 1;
}
if(gamePaused == 0) image_index = 0;
if(gamePaused == 1) image_index = 1;
if (gamePaused == false)
{	
	instance_activate_all();
}

else if (gamePaused == true)
{
	instance_deactivate_all(true);
}