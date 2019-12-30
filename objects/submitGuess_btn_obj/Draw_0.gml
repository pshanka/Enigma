///@description draws the lock and the text
//draws the lock
draw_self();

//sets up the graphics for the text
draw_set_color(c_yellow);

draw_set_valign(fa_middle);
draw_set_halign(fa_left);

//draw the text
draw_text(x,y,text);