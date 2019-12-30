///@description checks for input and responds
// legalKey checks if player has input a digit from 0 to 9
if(gamePaused == 0) {
legalKey = true;
for(var i = 1; i <= string_length(keyboard_string); ++i) {
	//basically run through the entire string and checks if any of the 
	//characters are not numbers
	k = string_char_at(keyboard_string,i);
	if(k == "1" || k == "2" || k == "3" || k == "4" || k == "5" || k == "6" || k == "7"
	|| k == "8" || k == "9" || k == "0") {
	} else {
		legalKey = false;
	}
}
// Player can input at most 2 digits into the textbox
if (legalKey && keyboard_string != "" && string_length(text2) <= 1)
{
	if(sounds[real(string_char_at(keyboard_string,1))] != "*") {
		text2 += string(string_char_at(keyboard_string,string_length(keyboard_string)));
		keyboard_string = ""; 
	}
}

// If backspace is pressed, all text in textbox is deleted
if (keyboard_check_pressed(vk_backspace)){
	text2 = "";
	keyboard_string = "";
}

// Evaluates the player's guess as to which sounds are paired
if (keyboard_check_released(vk_enter)  && string_length(text2) == 2)
{
	{
	// Converts player input from strings to numbers
	a = real(string_char_at(text2,1)); 
	b = real(string_char_at(text2,2));
		
	if (sounds[a] == sounds[b] && sounds[a] != "*" && a != b)
	{
		// Sets correctly guessed sounds to asterisks, so player cannot guess sounds they have already guessed correctly
		sounds[a] = "*"; 
		sounds[b] = "*";
		audio_play_sound(Correct,0,0);
		//instance_create_layer(908, 80, layer, objcircle); // Creates token when player guesses correctly
		instance_create_layer(tokenLocation, 80, layer, objcircle); // Creates token when player guesses correctly
		tokenLocation -= 10;
	}
	else
	{
		audio_play_sound(No,0,0);
	}
	}
	instance_destroy(); // Textbox is closed after a player enters a guess
}

keyboard_string = "";
}