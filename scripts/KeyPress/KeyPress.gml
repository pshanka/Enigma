// The KeyPress cript works with keys that the player input
// Also verifies whether player is entering keys correctly 
// and proceeds to the next level or restarts the current level accordingly

key = argument0; // Indicates whether the player entered an up, down, right, or left key
num = argument1; // Indicates move to next room (after level 1) or restart current room (levels 2-4)

if (freeze == 0 && index2 < numSounds)
{
	// Checks if key has been entered in the correct order
	if (sounds[index2] == key)
	{
		index2 += 1;
	}
	
	// Player has entered a key incorrectly and the current level restarts
	else
	{
		audio_play_sound(No, 0, 0);
		alarm_set(2, 10);
	}
}

// After player has correctly entered all sounds in current level
if (index2 == numSounds)
{
	freeze = 1;
	level += 1; // Moves to next level
	index = 0;
	index2 = 0;
	audio_play_sound(Correct,0,0);
	
	if (num == 1) // After completing level 1, goes to the room with levels 2-4
	{
		room_goto_next();
	}
	
	if (num == 2)	
	{
		if (level == 3) // Game ends after completing 4 levels
		{
			room_goto(leftrightupdownclueintroroom);
		}
		else
		{
			room_restart();
		}
	}
}
