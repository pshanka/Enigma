///@description initializes all of the variables and plays the audio
// initialize variables
//initializes the text of the word
spellText = "Spell the word. Press Enter to begin.";
//sets the user input to the empty literal
spellAttempt = "";
//sets the keyboard input to the empty string literal
keyboard_string = "";
//maybe a feature in Omega? 
//randomize();
//the words that we have you spell out, in order of when they are read
//I made sure that the array initialization started from the forth and moved up
//This is because gamemaker dynamically allocates data so it's best if you do it
//from the last position so it does not have to allocate memory four times
//and copy the array over
spellArr[4] = "reminiscent";
spellArr[3] = "connecticut";
spellArr[2] = "onomatopoeia";
spellArr[1] = "chihuahua";
spellArr[0] = "xylophone";
//the index of the word being spelled
i = 0;
//I wanted to do this as a switch but I'm scared about how 
//gamemaker will interperet it
//basically, index matches up with the i value for the word you have to type out
//play the audio that tells you to spell reminiscent
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
//set the mode to playing
playing = 1;
//reset the number of incorrect guesses the player inputted
guesses = 0;
/*
SpellingArr[6] = "word6";
SpellingArr[5] = "word5";
SpellingArr[4] = "word4";
SpellingArr[3] = "word3";
SpellingArr[2] = "word2";
SpellingArr[1] = "word1";
SpellingArr[0] = "word0";
*/
// spellingArr[6] = {w1, w2, w3, w4, w5, w6};
//for the sortcuts
timere = 0;
timerr = 0;
timerp = 0;
lastPlayed = 0;