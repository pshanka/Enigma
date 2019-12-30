/// @description when timer runs out then next screen
// You can write your code in this editor
if(gamePaused == 0) {
++timer;
if(timer == 482) {
	audio_stop_all();
	room_goto(MainStory1);
}
}