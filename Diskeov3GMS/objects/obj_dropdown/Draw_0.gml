draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_color(c_white);
draw_set_alpha(1)
 
draw_text(x + sprite_width / 2 + 40, y + sprite_height / 2, string_hash_to_newline(text));
draw_set_valign(fa_top);
draw_set_halign(fa_left);