/// @description draws the points
draw_set_font(pointFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(0,0,"Time: ");
draw_text(100,0,floor(mainGamePoints/60));
draw_set_font(regularFont);