/// @description goes to the next slide
if(gamePaused == 0) {
audio_stop_all();
if(timer < 1419) {
	timer = 1418;
} else if (timer < 2060) {
	timer = 2059;
} else {
	room_goto(Level1);
}
}
//Here are all of the rooms (in order)
//mainNavigation