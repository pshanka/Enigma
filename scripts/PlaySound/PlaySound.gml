//um...
//um...
//um...
//Plays, the sound, I think?

//accepts i as the input (arguemnt0) bc we don't want to type out argument0 every time
i = argument0;

//could also be a switch, but don't want to try to implement that in GML
//plays the sound based on the input
if (sounds[i] == 0)
	{audio_play_sound(A,0,0);}
else if (sounds[i] == 1)
	{audio_play_sound(B,0,0);}
else if (sounds[i] == 2)
	{audio_play_sound(C,0,0);}
else if (sounds[i] == 3)
	{audio_play_sound(D,0,0);}
else if (sounds[i] == 4)
	{audio_play_sound(E,0,0);}

