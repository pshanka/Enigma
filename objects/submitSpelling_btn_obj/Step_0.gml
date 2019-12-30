///@description reads the current input (if there is any) and then performs the appropiate action
// work on current input
//if the game is playing
if(gamePaused == 0) {
if(playing == 1) {
	//checks if the keyboard has been typed in and if the string is one of the special cases
	if (keyboard_check(vk_anykey) && spellText != "You guessed too much. Press any key to return to the main menu"
	&& spellText != "Correct Spelling. Access Granted. Press any key to return." &&
	spellText != "Spell the word. Press Enter to begin.")
	{
		for(k = 0; k < string_length(keyboard_string); ++k) {
			j = ord(string_char_at(keyboard_string,k));
			if(timere < 15 && timerr < 15 && timerp < 15 && string_length(spellText) < 57) {
				if(j > 64 && j < 91) {
					spellText += string(chr(j + 32));
				}
				if(j > 96 && j < 123) {
					spellText += string(chr(j));
				}
			}
		}
	}
	//reset the directions to the main menu
	//if you guys write this as a bug I'm coming for you lol
	//but I'll admit you need some serious dedication to find this bug
	if (keyboard_check(vk_anykey) && !keyboard_check(vk_enter) && spellText == "Spell the word. Press Enter to begin.") {
		//resets the spellText to nothing
		//adds the character just typed in into the system
		spellText = "";
		spellText += string(keyboard_string);
		//stops all of the audio playing
		audio_stop_all();
	}
	//clears the string literal to nothing
	if(keyboard_check(vk_anykey)) {
		keyboard_string = "";
	}
	if(keyboard_check_pressed(vk_backspace)) {
		spellText = "";
		keyboard_string = "";
	}
} else {
	//checks if any key other than the enter key has been pressed
	if(keyboard_check(vk_anykey) && !keyboard_check(vk_enter)) {
		//stop all of the audio
		audio_stop_all();
		//playing = 2 means that you have completed the puzzle successfully
		//playing = 1 means that you have lost the mini game
		if(playing == 2) {
			//sends you to the clue room
			room_goto(wordspellerclueintroroom);
		} else {
			//sends you to the main naviation room
			room_goto(mainPuzzle);
		}
	}
}
//checks for the shortcuts
//if the r key has been held for 5 seconds, send back to instructions
if(keyboard_check(82) || keyboard_check(114)) {
	++timerr;
	if(timerr == 300) {
		audio_stop_all();
		room_goto(wordspellerinstructions_room);
	}
} else {
	timerr = 0;
}
//if the e key has been held for 5 seconds, replays the audio
if(keyboard_check(101) || keyboard_check(69)) {
	++timere;
	if(timere == 300) {
		audio_stop_all();
		if(i == 4) {
			//plays the audio that tells you to spell reminiscent
			audio_play_sound(spellreminiscentsound,1.0,0);
		}
		//plays the audio that tells you to spell Connecticut
		if(i==3) {
			//plays the audio that tells you to spell Connecticut
			//You don't have to capitalize it (at least, I don't think so)
			audio_play_sound(spellconnecticutsound,1.0,0);
		}
		//plays the audio that tells you to spell onomatopoeia
		if(i==2) {
			//plays the audio that tells you to spell onomatopoeia
			audio_play_sound(spellonomatopoeiasound,1.0,0);
		}
		//plays the audio that tells you to spell chihuahua
		if(i==1) {
			//plays the audio that tells you to spell chihuahua
			//You don't have to capitalize it (at least, I don't think so)
			audio_play_sound(spellchihuahuasound,1.0,0);
		}
		//plays the audio that tells you to spell xylophone
		if(i == 0) {
			//plays the audio that tells you to spell xylophone
			audio_play_sound(spellxylophonesound,1.0,0);
		}
	}
} else {
	timere = 0;
}
if(keyboard_check(80) || keyboard_check(112)) {
	++timerp;
} else {
	timerp = 0;
}
}