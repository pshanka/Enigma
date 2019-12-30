/// @description plays the audio and then initializes all of the variables
//plays the audio
audio_play_sound(cannonblasterclueintrosnd,1,0);
//initializes the timer
timer = 0;
//sets the game status as finished
obj_cannonblasterfinished = 1;
//makes sure that the player doesn't reset
resetlvl1 = 0;