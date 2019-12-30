/// @description initializes variables
// the number of guesses that was inputted
guesses = 0;
// the text of the button
text = "Enter a guess between 11 and 20. Press Enter.";
// play the instruction that tells you to enter a number between 11 and 20
audio_play_sound(guessing_room_instructions1,1.0,0);
// creates the variable to store the guess
enteredGuess = "";
//randomizes and then creates a new number bewteen 11 and 20
randomize();
key = irandom_range(11,20); // random values for the key
// tells the mode of the game
// if you want a reason why this was named timerRun, plz as Keith
timerRun = 0;

//for the sortcuts
timere = 0;
timerr = 0;
lastPlayed = 0;