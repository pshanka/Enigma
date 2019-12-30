/// @description checks the string
//stops all of the current audio
if(gamePaused == 0) {
audio_stop_all();
//checks whether the game is playing or not
if(playing == 1) {
	//sets the current spelling attempt to the user input
	spellAttempt = spellText;
	//if the word was spelled correctly
	if (spellAttempt == spellArr[i]) {
		//resets user input
		spellText = "";
		//adds one to the number of words spelled correctly/index of the word to spell
		++i;
		//if you spelled all of the words correctly
		if(i==5) {
			//play the access granted sound
			audio_play_sound(guessing_room_access_granted,1.0,0);
			//sets the textbox to the access granted stuff
			spellText = "Correct Spelling. Access Granted. Press any key to return.";
			//sets the playing status to go to the clue
			playing = 2;
			//subtract one from the number of words spelled correctly because of a very specific
			//error in the other programs in this object
			--i;
		} else 
		//if you correctly answered four words correctly
		if(i == 4) {
			//tells you to spell reminiscent
			audio_play_sound(spellreminiscentsound,1.0,0);
		}
		//if you correctly answered three words correctly
		if(i==3) {
			//tells you to spell Connecticut
			audio_play_sound(spellconnecticutsound,1.0,0);
		}
		//if you correctly answered two words correctly
		if(i==2) {
			//tells you to spell onomatopoeia
			audio_play_sound(spellonomatopoeiasound,1.0,0);
		}
		//if you correctly answered one word correctly
		if(i==1) {
			//tells you to spell chihuahua
			audio_play_sound(spellchihuahuasound,1.0,0);
		}
		//if you correctly answered zero words correctly
		if(i == 0) {
			//tells you to spell xylophone
			audio_play_sound(spellxylophonesound,1.0,0);
		}
	} else if (spellText == "Spell the word. Press Enter to begin.") {
		//clears the string
		spellText = "";
	//if you spelled the word incorrectly
	} else {
		//resets the spelled word
		spellText = "";
		//adds one to the number of guesses that the player answered incorrectly for
		++guesses;
		//if you reach four guess, return to the main navigation menu
		if(guesses == 4) {
			//play the sound that tells you that you attempted too many times
			audio_play_sound(guessing_room_denied,1.0,0);
			//tells you in text that you guessed too much
			text = "You guessed too much. Press any key to return to the main menu";
			//set the playing status to lost
			playing = 0;
		} else {
			//tells you that you spelled the word incorrectly
			audio_play_sound(spellincorrect,1.0,0);
		}
		//clear the string spellText
		spellText = "";
	}
//if the game is not in the playing mode right now
} else {
	//stop all of the audio
	audio_stop_all();
	//playing == 2 means that the player won the game
	//playing == 0 means that the player lost the game
	if(playing == 2) {
		//if the player won the game
		room_goto(wordspellerclueintroroom);
	} else {
		//if the player lost the game
		room_goto(mainPuzzle);
	}
}
}