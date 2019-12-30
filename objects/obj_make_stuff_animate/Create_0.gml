/// @description initializes timer for the animations
timer = 0;
//makes sure that all of the objects are set up for the first frame of the story to begin
o_Zi.image_index = 0;
o_Daniel.image_index = 0;
o_textrightborder.image_index = 0;
o_textleftborder.image_index = 0;
o_extra.image_index = 0;
o_text.image_index = 0;
o_Textflip.image_index = 0;
Narration_story1.image_index = 1;
obj_ZiText1.image_index = 0;
obj_DanielText1.image_index = 0;
obj_background1.image_index = 0;
obj_ZiSpeaking1.image_index = 0;
obj_DanielSpeaking1.image_index = 0;
//play the main story for the level 1
audio_play_sound(MainStory1_snd,1.0,0);
//make sure that the game speed is constant for the timer and the frame animations
game_set_speed(60,gamespeed_fps);