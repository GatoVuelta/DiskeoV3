if (element_enable)
{

//Focus border	
if (!focus)
{
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_txtbx_bg_unfocused, 1-init_alpha);
} else 
{
	//Background
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_txtbx_bg_focused, border_alpha-init_alpha);
}

//Tab
draw_sprite_ext(s_tab0_corner, 0, x-x_threshold, y+2, 1, 1, 0, global.UI_general_primary, 1-init_alpha);

//TabText
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_UniSans_TabTtle);
draw_set_alpha(1-init_alpha);
draw_text((x+175)-x_threshold, y-16, tab_text);

//Focus indicator
draw_sprite_ext(s_txtbx_bd0, 0, x-x_threshold, y, 1, 1, 0, global.UI_general_primary, border_alpha-init_alpha);

} else 
{
	draw_sprite_ext(s_tab0_corner, 0, x-x_threshold, y+2, 1, 1, 0, global.UI_element_disabled, 1-init_alpha);
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_disabled, 0.5-init_alpha)
	//TabText
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(global.UI_element_unfocused);
	draw_set_font(f_UniSans_TabTtle);
	draw_set_alpha(1-init_alpha);
	draw_text((x+175)-x_threshold, y-16, tab_text);
	
	if (soon_availability) && (position_meeting(mouse_x, mouse_y, id))
	{
		//Cuadro
		draw_set_color(global.UI_general_secondary);
		draw_set_alpha(0.5);
		var width = (string_length(soon_text)*10) + 15;
		draw_roundrect_ext(mouse_x, mouse_y, mouse_x+width, mouse_y+30, 20, 20, false);
		//Texto
		draw_set_color(global.UI_element_focused);
		draw_set_font(f_input);
		draw_set_alpha(1);
		draw_text(mouse_x+(width/2), mouse_y+15, soon_text);
	}
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);

//Draw textbox itself
script_execute(tte_ext_input_draw,0,0,0,0,0);