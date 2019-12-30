/// @description plays the sound and initiializes all of the variables
//plays the sound
audio_play_sound(guessthenumberclueintrosnd,1,0);
//sets the number of points to zero (for some reason, I think is the timer)
points = 0;
//turn the level to finished
obj_guessing_level2finished = 1;
//makes sure that the player doesn't reset
resetlvl1 = 0;