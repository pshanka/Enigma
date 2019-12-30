/// @description creates the animations
// increments the timer for every frame that passes
if(gamePaused == 0) {
++timer;

//for the second frame of the animations
//make the Zi and Daniel objects appear
//Also, change the narration story to the second animation
//Change the background image to the mojo dining room
if(timer == 2520) {
	Narration_story1.image_index = 2;
	o_Zi.image_index = 1;
	o_Daniel.image_index = 1;
	obj_background1.image_index = 1;
}

// for the third frame of the animations
// make Zi talk
// also make the narration story disappear
if(timer == 2613) {
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_text.image_index = 1;
	Narration_story1.image_index = 0;
	obj_ZiText1.image_index = 1;
	obj_ZiSpeaking1.image_index = 1;
}

// for the forth frame of the animation
// make Daniel talk
// also make the Zi text disappear
if(timer == 3167) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 1;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the fifth frame of the animation
// make Zi talk
// also make the Daniel text disappear
if(timer == 4219) {
	o_text.image_index = 1;
	o_Textflip.image_index = 0;
	obj_ZiText1.image_index = 2;
	obj_DanielText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 1;
	obj_DanielSpeaking1.image_index = 0;
}

// for the sixth frame of the animation
// make Daniel talk
// also make the Zi text disappear
if(timer == 4573) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 2;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the seventh frame of the animation
// make Zi talk
// also make the Daniel text disappear
if(timer == 5220) {
	o_text.image_index = 1;
	o_Textflip.image_index = 0;
	obj_ZiText1.image_index = 3;
	obj_DanielText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 1;
	obj_DanielSpeaking1.image_index = 0;
}

// for the eighth frame of the animation
// make Daniel talk
// also make the Zi text disappear
if(timer == 5980) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 3;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the ninth frame of the animation
// make Zi talk
// also make the Daniel text disappear
if(timer == 6220) {
	o_text.image_index = 1;
	o_Textflip.image_index = 0;
	obj_ZiText1.image_index = 4;
	obj_DanielText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 1;
	obj_DanielSpeaking1.image_index = 0;
}

// for the tenth frame of the animation
// make the narration appear
// also make the Zi text disappear
if(timer == 7244) {
	o_textrightborder.image_index = 0;
	o_textleftborder.image_index = 0;
	o_extra.image_index = 0;
	o_text.image_index = 0;
	Narration_story1.image_index = 3;
	obj_ZiText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 0;
}

// for the eleventh frame of the animation
// make the Zi text appear
// also make the narration text disappear
if(timer == 7393) {
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_text.image_index = 1;
	Narration_story1.image_index = 0;
	obj_ZiText1.image_index = 5;
	obj_ZiSpeaking1.image_index = 1;
}

// for the twelth frame of the animation
// make the Daniel text appear
// also make the Zi text disappear
if(timer == 7554) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 4;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the thirteenth frame of the animation
// make the Zi text appear
// also make the Daniel text disappear
if(timer == 7716) {
	o_text.image_index = 1;
	o_Textflip.image_index = 0;
	obj_ZiText1.image_index = 6;
	obj_DanielText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 1;
	obj_DanielSpeaking1.image_index = 0;
}

// for the fourteenth frame of the animation
// make the Daniel text appear
// also make the Zi text disappear
if(timer == 7835) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 5;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the fifteenth frame of the animation
// show the narration text
// also make the Daniel text disappear
if(timer == 8161) {
	o_textrightborder.image_index = 0;
	o_textleftborder.image_index = 0;
	o_extra.image_index = 0;
	o_Textflip.image_index = 0;
	Narration_story1.image_index = 4;
	obj_DanielText1.image_index = 0;
	obj_DanielSpeaking1.image_index = 0;
}

// for the sixteenth frame of the animation
// show the Zi text
// also make the narration text disappear
// change the background to the upper floor of Mojo
if(timer == 8562) {
	Narration_story1.image_index = 0;
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_text.image_index = 1;
	obj_ZiText1.image_index = 7;
	obj_background1.image_index = 2;
	obj_ZiSpeaking1.image_index = 1;
}

// for the seventeenth frame of the animation
// show the Daniel text
// also make the Zi text disappear
if(timer == 8934) {
	o_text.image_index = 0;
	o_Textflip.image_index = 1;
	obj_ZiText1.image_index = 0;
	obj_DanielText1.image_index = 6;
	obj_ZiSpeaking1.image_index = 0;
	obj_DanielSpeaking1.image_index = 1;
}

// for the nineteenth frame of the animation
// show the narration text
// also make the Daniel text disappear
if(timer == 9026) {
	o_textrightborder.image_index = 0;
	o_textleftborder.image_index = 0;
	o_extra.image_index = 0;
	o_Textflip.image_index = 0;
	Narration_story1.image_index = 5;
	obj_DanielText1.image_index = 0;
	obj_DanielSpeaking1.image_index = 0;
}

// for the twentieth frame of the animation
// show Zi speaking
// also make the narration story disappear
if(timer == 9784) {
	Narration_story1.image_index = 0;
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_text.image_index = 1;
	obj_ZiText1.image_index = 8;
	obj_background1.image_index = 2;
	obj_ZiSpeaking1.image_index = 1;
}

// for the twenty-first frame of the animation
// show the narration text
// also make the zi text disappear
if(timer == 9946) {
	o_textrightborder.image_index = 0;
	o_textleftborder.image_index = 0;
	o_extra.image_index = 0;
	o_text.image_index = 0;
	Narration_story1.image_index = 6;
	obj_ZiText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 0;
}

// for the twenty-first frame of the animation
// show Daniel speaking
// also make the narration text disappear
if(timer == 10170) {
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_Textflip.image_index = 1;
	Narration_story1.image_index = 0;
	obj_DanielText1.image_index = 7;
	obj_DanielSpeaking1.image_index = 1;
}

// for the twenty-second frame of the animation
// show Zi speaking
// also make the Daniel text disappear
if(timer == 10242) {
	o_text.image_index = 1;
	o_Textflip.image_index = 0;
	obj_ZiText1.image_index = 9;
	obj_DanielText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 1;
	obj_DanielSpeaking1.image_index = 0;
}

// for the twenty-third frame of the animation
// show the narration text
// also make the Zi iamge disappear
if(timer == 10405) {
	o_textrightborder.image_index = 0;
	o_textleftborder.image_index = 0;
	o_extra.image_index = 0;
	o_text.image_index = 0;
	Narration_story1.image_index = 7;
	obj_ZiText1.image_index = 0;
	obj_ZiSpeaking1.image_index = 0;
}

// for the twenty-fifth frame of the animation
// show Zi speaking
// also make the narration text disappear
if(timer == 10584) {
	o_textrightborder.image_index = 1;
	o_textleftborder.image_index = 1;
	o_extra.image_index = 1;
	o_text.image_index = 0;
	Narration_story1.image_index = 0;
	obj_ZiText1.image_index = 10;
	obj_ZiSpeaking1.image_index = 1;
}

// play the audio clip that states "press enter to continue"
// at the end of the narration
if(timer == 10832) {
	audio_play_sound(press_enter_continue_snd,1.0,0);
}
}