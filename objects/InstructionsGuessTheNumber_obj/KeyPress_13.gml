/// @description go to the game
//stops all of the remaining audio
if(gamePaused == 0) {
audio_stop_all();
//goes to the next room 
//if not, then it will go to the next room
if(timer < 1133) {
	timer = 1132;
} else if (timer < 1734) {
	timer = 1733;
} else {
	room_goto(guessing_room);
}
}