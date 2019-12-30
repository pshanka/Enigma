///@description draws the things on the main menu
draw_set_font(fontBig);

// Displays slot numbers for sounds that have not been guessed yet
for (i = 0; i < numSounds; i++)
{
	if (sounds[i] != "*")
	{
		draw_text(100+40*i,100,string(i));
	}
}

//draw_text(600, 300, string("Done: ") + string(done));

// Draws instructions that player may want to reference while playing the game
draw_set_font(font1);
draw_text(200,500,"This game is a memory-based game where the player will need to pair up sounds.");
draw_text(200,530,"There are 5 pairs of sounds (letters from A to E), and there are 10 slots ranging from slot 0 to slot 9.");
draw_text(200,560,"Each time you press a slot number, audio will be played, revealing which letter is in that slot.");
draw_text(200,590,"In order to pair up 2 sounds, you must press the spacebar and then type in two slot numbers that contain"); 
draw_text(200,620,"the same sound. After typing in your guess, you must press enter.");