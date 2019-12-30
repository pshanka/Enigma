/// @description removes that last character from the text
if(gamePaused == 0) {
if(string_length(text) > 0) {
	text = string_copy(text,1,string_length(text)-1);
}
}