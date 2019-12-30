/// @description deletes a character when you press backspace
// You can write your code in this editor
if(gamePaused == 0) {
if(string_length(spellText) > 0) {
	//deletes one character off the string
	spellText = string_copy(spellText,1,string_length(spellText)-1);
}
}