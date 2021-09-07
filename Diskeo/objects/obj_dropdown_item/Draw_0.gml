if !(hover)
{
	image_blend = global.UI_txtbx_bg_focused;
} else {
	image_blend = global.UI_txtbx_textsel;
}

draw_self();

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_color(c_white);
draw_set_alpha(1)
draw_set_font(f_UniSans_TabTtle);

//Options
draw_text(x+sprite_width/2, y+sprite_height/2, string_hash_to_newline(text));

//Border
if (id.parent.open)
{
	draw_sprite_ext(s_dw_large0_i_bd, 0, x, y, 1, 1, 0, global.UI_general_primary, image_alpha);
}

//Reset
draw_set_valign(-1);
draw_set_halign(-1);

