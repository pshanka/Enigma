///@description initializes all of the variables
globalvar level; 
level = 1;
globalvar numSounds; 
numSounds = level + 4; // number of directions that will be played in the current level
var i = numSounds - 1;
randomize();
repeat(numSounds)
{
   sounds[i] = irandom_range(1,4); // creates random array of numbers corresponding to directions given
   i -= 1;
}
   
globalvar index; // index is used to traverse array of sounds as directions are being read aloud
index = 0;
globalvar freeze;  // freeze variable prevents player from entering keys while audio is playing
freeze = 1;
globalvar index2; // index2 is used to compare each player input to the correct key
index2 = 0;

// After this alarm ends, directions will be spoken to the player
alarm_set(0, 30);