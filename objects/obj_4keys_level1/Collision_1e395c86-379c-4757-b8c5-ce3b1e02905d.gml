/// @description go to four keys if the objective has not
//been compleeted already
if(obj_4keys_level1finished == 0) {
	//stop the audio (just in case)
	audio_stop_all();
	//go to the clue room
	room_goto(leftrightupdownroom);
}