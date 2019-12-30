///@description changes the text and checks for keyboard inputs
// work on current input
//checks if there is a key pressed
if(gamePaused == 0) {
if (keyboard_check(vk_anykey))
{
	//if the text number is greater than 3, then clear the text and stop all of the audio
	if(string_length(text) > 3 && !keyboard_check(vk_enter)) {
		//stops all of the audio
		audio_stop_all();
		//reset all of the text
		text = "";
	}
	//checks if the inputted string was part of a number
	//also limits the total text length to be 3
	if(string_length(text) < 3 && (keyboard_string == "1" || keyboard_string == "2" || keyboard_string == "3" ||
keyboard_string == "4" || keyboard_string == "5" || keyboard_string == "6" ||
keyboard_string == "7" || keyboard_string == "8" || keyboard_string == "9" || keyboard_string == "0")) {
		text += string(keyboard_string); // adds the keys
	}
}
//if any key has been pressed and the mode is either 
//that you lost (1) or won (2), then move to the correct screen
//keep in mind that the enter key has redundant code, that is why 
//there is the !keyboard_check(vk_enter) in the if statement
if(timerRun != 0 && keyboard_check(vk_anykey) && !keyboard_check(vk_enter)) {
	//stop all of the audio
	audio_stop_all();
	//if timerRun == 2, then go to the clue room
	//otherwise, go to the main menu
	if(timerRun == 2) {
		//go to the clue room
		room_goto(guessthenumberclueintroroom);
	} else {
		//go back to the main menu
		room_goto(mainPuzzle);
	}
}
//clears the string literal in the keyboard_string
if(keyboard_check(vk_anykey)) {
	keyboard_string = "";
}
//checks for the shortcuts
//if the r key has been held for 5 seconds, send back to instructions
if(keyboard_check(82) || keyboard_check(114)) {
	++timerr;
	if(timerr == 300) {
		audio_stop_all();
		room_goto(guessingroominstructions);
	}
} else {
	timerr = 0;
}
//if the e key has been held for 5 seconds, reset the room
if(keyboard_check(101) || keyboard_check(69)) {
	++timere;
	if(timere == 300) {
		audio_stop_all();
		if(lastPlayed == 0) {
			audio_play_sound(guessing_room_instructions1,1.0,0);
		} else if (lastPlayed == 1) {
			audio_play_sound(guessing_room_denied,1.0,0);
		} else if (lastPlayed == 2) {
			audio_play_sound(guessing_room_too_high,1.0,0);
		} else if (lastPlayed == 3) {
			audio_play_sound(guessing_room_too_low,1.0,0);
		} else if (lastPlayed == 4) {
			audio_play_sound(guessing_room_access_granted,1.0,0);
		}
	}
}
}