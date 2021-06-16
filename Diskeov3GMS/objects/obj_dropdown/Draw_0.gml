//DrawingProperties
image_blend = global.UI_txtbx_bg_focused;
draw_self();

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_alpha(image_alpha)

//DrawActualChoice
//draw_set_font(f_input);
draw_set_font(f_UniSans_TabTtle);
draw_text(x+sprite_width/2+40, y+sprite_height/2, string_hash_to_newline(text));

//DrawPlayingStatus
//draw_set_font(f_UniSans_TabTtle);
if !(open)
{
	draw_sprite_ext(s_dw_playactv, 0, x+65, y+(sprite_height/2), 1, 1, 0, global.UI_general_primary, image_alpha);
	draw_text(x+65, y+sprite_height/2, "Playing");
} else {
	draw_sprite_ext(s_dw_playactv, 0, x+65, y+(sprite_height/2)+2, 1, 1, 0, global.UI_general_primary, image_alpha);
	draw_text(x+65, y+(sprite_height/2)+2, "Playing");
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);

//Border
draw_sprite_ext(s_dw_large0_bd, 0, x, y-2, 1, 1, 0, global.UI_general_primary, border_alpha);