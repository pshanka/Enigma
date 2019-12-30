///@description Plays sound corresponding to the slot the player pressed
if(gamePaused == 0) {
if (keyboard_check_pressed(ord("0")))
{
	PlaySound(0);
	lastPlayed = 0;
}

if (keyboard_check_pressed(ord("1")))
{
	PlaySound(1);
	lastPlayed = 1;
}

if (keyboard_check_pressed(ord("2")))
{
	PlaySound(2);
	lastPlayed = 2;
}

if (keyboard_check_pressed(ord("3")))
{
	PlaySound(3);
	lastPlayed = 3;
}

if (keyboard_check_pressed(ord("4")))
{
	PlaySound(4);
	lastPlayed = 4;
}

if (keyboard_check_pressed(ord("5")))
{
	PlaySound(5);
	lastPlayed = 5;
}

if (keyboard_check_pressed(ord("6")))
{
	PlaySound(6);
	lastPlayed = 6;
}

if (keyboard_check_pressed(ord("7")))
{
	PlaySound(7);
	lastPlayed = 7;
}

if (keyboard_check_pressed(ord("8")))
{
	PlaySound(8);
	lastPlayed = 8;
}

if (keyboard_check_pressed(ord("9")))
{
	PlaySound(9);
	lastPlayed = 9;
}

if (keyboard_check_pressed(vk_space) && !instance_exists(obj_Textbox))
{
	instance_create_layer(300, 300, "Instances", obj_Textbox);
}

//Timer
steps += 1;
if (steps >= room_speed)
{
	steps = 0;
	seconds += 1;
}

// Checks when to finish the game
// Game is finished when all slots contain an asterisk (all slots have been matched correctly)
for (i = 0; i < 10; i++)
{
	if (sounds[i] == "*")
	{
		done += 1;
	}
	else
	{done = 0;}
}

// Done variable increments as more sounds have been identified correctly
if (done >= 100)
{
	room_goto(clueintro105room);
}

//checks to see if you want to replay audio
//first checks the keys
if(keyboard_check(69) || keyboard_check(101)) {
	++timere;
	if(timere == 300) {
		//replay the last audio
		if(lastPlayed != -1) {
			audio_stop_all();
			PlaySound(lastPlayed);
		}
	}
} else {
	//resets the timer
	timere = 0;
}
}