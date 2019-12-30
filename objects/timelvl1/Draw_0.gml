/// @description Insert description here
// You can write your code in this editor
draw_set_font(pointFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(38,373,"Time: ");
draw_text(138,373,floor(mainGamePoints/60));