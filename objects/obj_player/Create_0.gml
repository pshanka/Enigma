///@description initializes the variables, for now...
movementSpeed = 20;
frames = 1;
numFramesAnimate = 10;
//for the speed of the beep
soundRecoil = 1;
if(resetlvl1 == 0) {
	resetlvl1 = 1;
} else {
	lvl1x = 0;
	lvl1y = 0;
}
//go to ending (if appropiate)
if(obj_4keys_level1finished == 1 && 
obj_guessing_level2finished == 1 &&
obj_spellingfinished == 1 &&
obj_10_5_StartGamefinished == 1 &&
obj_cannonblasterfinished == 1) {
	room_goto(ending);
}