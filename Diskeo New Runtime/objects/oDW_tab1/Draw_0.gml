//Tab
if (element_enable)
{

//Focus border	
if (focus)
{
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_general_primary, 1-init_alpha);

//TabText
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_UniSans_TabTtle);
draw_set_alpha(1-init_alpha);
draw_text((x+175)-x_threshold, y-16, tab_text);

draw_set_color(global.UI_element_unfocused);
}


} else 
{
	//draw_sprite_ext(s_tab0_corner, 0, x-x_threshold, y+2, 1, 1, 0, global.UI_element_disabled, 1-init_alpha);
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_disabled, 0.5-init_alpha)
	//TabText
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(global.UI_element_unfocused);
	draw_set_font(f_UniSans_TabTtle);
	draw_set_alpha(1-init_alpha);
	draw_text((x+250)-x_threshold, y-16, tab_text);
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);