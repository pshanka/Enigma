///@description plays sounds
if(gamePaused == 0) {
if (index < numSounds)
{
	// Plays sounds corresponding to the numbers contained in the numSounds array 
	switch (sounds[index])
	{
		case 1:	{audio_play_sound(Up, 0, 0); break;}
		case 2:	{audio_play_sound(Down, 0, 0); break;}
		case 3:	{audio_play_sound(Right, 0, 0); break;}
		case 4:	{audio_play_sound(Left, 0, 0); break;}
	}
	index += 1;
	alarm_set(0, 50);
}

// After all sound directions have been played, the player can now input sounds
else
{
	alarm_set(1,50);
}
}