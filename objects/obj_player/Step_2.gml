/// @description creates the bumping sound
//if the player is touching a wall
if(gamePaused == 0) {
if(touchingLeft == 1 || touchingRight == 1 || touchingUp == 1 || touchingDown == 1) {
	//play the sound
	--soundRecoil;
	if(soundRecoil < 1) {
		soundRecoil = 20;
		if(touchingLeft == 1) {
			audio_play_sound_at(jump_snd,50,0,0,100,300,1,false,1.0);
		} else if(touchingRight == 1) {
			audio_play_sound_at(jump_snd,-50,0,0,100,300,1,false,1.0);
		} else if(touchingUp == 1) {
			audio_play_sound_at(jump_snd,0,50,0,100,300,1,false,1.0);
		} else if(touchingDown == 1) {
			audio_play_sound_at(jump_snd,0,-50,0,100,300,1,false,1.0);
		}
		//audio_play_sound(jump_snd,1.0,0);
	}
} else {
	//reset the sound
	soundRecoil = 1;
}
}