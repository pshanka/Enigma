/// @description checks the string
// You can write your code in this editor
//clear any audio
if(gamePaused == 0) {
audio_stop_all();
//to check if the text is a number
j = true;
for(var i = 1; i <= string_length(text); ++i) {
	//basically run through the entire string and checks if any of the 
	//characters are not numbers
	k = string_char_at(text,i);
	if(k == "1" || k == "2" || k == "3" || k == "4" || k == "5" || k == "6" || k == "7"
	|| k == "8" || k == "9" || k == "0") {
	} else {
		j = false;
	}
}
//checks if one of the ending states has been reached
if(timerRun != 0) {
	if(timerRun == 2) {
	room_goto(guessthenumberclueintroroom);
	} else {
		room_goto(mainPuzzle);
	}
}
//runs if number and the text is not blank
if(j && text != "") {
	//adds one to the number of guesses
	++guesses;
	//if there are too many guesses, then set the mode to return to the main navigation menu
	if(guesses == 6) {
		timerRun = 1;
		//play the sound that tells you you guessed too much
		audio_play_sound(guessing_room_denied,1.0,0);
		lastPlayed = 1;
		//change the text to what the person is saying
		text = "You guessed too much. Press any key to return to the main menu";
	} else {
		//if the number of guesses is less than the limit
		//places the text into a number format
		enteredGuess = floor(real(text));
		//checks if the guess is greater than the key number
		if(enteredGuess > key) {
			//plays the sound that tells you to guess lower
			audio_play_sound(guessing_room_too_high,1.0,0);
			lastPlayed = 2;
			//change the text to show that you need to guess lower
			text = "Too high. Guess lower. Press enter to clear this message.";
		}
		//checks if the guess is less than the key number
		if(enteredGuess < key) {
			//plays the sound that tells you to guess higher
			audio_play_sound(guessing_room_too_low,1.0,0);
			lastPlayed = 3;
			//change the text to show that you need to guess higher
			text = "Too low. Guess higher. Press enter to clear this message.";
		}
		//checks if the guess is equal to the key number
		if (enteredGuess == key)
		{
			//plays the audio that tells you that you guessed the number correctly
			audio_play_sound(guessing_room_access_granted,1.0,0);
			lastPlayed = 4;
			//changes the text to show that you guessed the number correctly
			text = "Correct Entry. Access Granted. Press any key to return.";
			//change the mode to go to the clue room
			timerRun = 2;
		}
	}
} else {
	//clears the text if the given text was not a number
	text = "";
}
}