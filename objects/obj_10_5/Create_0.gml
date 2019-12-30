///@description initializes variables
globalvar numSounds;
numSounds = 10; // There are 5 pairs of sounds to match
var i = 0;

globalvar sounds;

// These indices ensure that each number from 0 to 4 appears in exactly 2 slots
for (i = 10; i < 15; i++)
{
	sounds[i] = 2;
}

// Assigns a random number from 0 to 4 in each slot 
for (i = 0; i < 10; i++)
{
	randomize();
	a = irandom_range(0,4);
    while (sounds[10+a] == 0) // Ensures that exactly 2 slots contain the same number
    {
		a = irandom_range(0,4);
    }
    sounds[i] = a;
	sounds[10+a] -= 1;
}

globalvar done; // Checks if all sounds have been matched
done = 0;

globalvar tokenLocation;
tokenLocation = 908; // Location where to create the token

//Timer
seconds = 0;
steps = 0;

//checks the input for the letter e
lastPlayed = -1;
timere = 0;