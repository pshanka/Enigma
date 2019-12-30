/// @description plays the sound for the instructions if you are visually impaired
audio_play_sound(press_enter_continue_snd,1.0,0);
//sets the total number of points in the game to 0
globalvar mainGamePoints;
mainGamePoints = 0;
//sets all of the games to not completed
globalvar obj_4keys_level1finished;
obj_4keys_level1finished = 0;
globalvar obj_guessing_level2finished;
obj_guessing_level2finished = 0;
globalvar obj_spellingfinished;
obj_spellingfinished = 0;
globalvar obj_10_5_StartGamefinished;
obj_10_5_StartGamefinished = 0;
//make the playerx and playery for level1 to be equal to 
//full screen!
window_set_fullscreen(false);
//resets the position of the player
globalvar lvl1x;
globalvar lvl1y;
lvl1x = 0;
lvl1y = 0;
globalvar resetlvl1;
resetlvl1 = 1;