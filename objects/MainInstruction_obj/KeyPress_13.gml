/// @description go to the animation or the next room
//if you guys find the bug with this, I'll be seriously a) pissed and b) amazed
if(gamePaused == 0) {
audio_stop_all();
if(timer < 2023) {
	timer = 2022;
} else if (timer < 3856) {
	timer = 3855;
} else if (timer < 6376) {
	timer = 6375;
} else {
	room_goto(MainStory1);
}
}