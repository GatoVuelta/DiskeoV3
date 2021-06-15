//Tab
if (focus)
{
	draw_sprite_ext(s_tab0_corner, 0, x-x_threshold-197, y+1, 1, 1, 0, global.UI_general_primary, 1-init_alpha-0.6);
}

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
draw_text((x+185)-x_threshold, y-16, tab_text);

draw_set_color(global.UI_element_unfocused);
draw_text((x+175)-x_threshold-275, y-16, "Bult-in Headings");
}

//Focus indicator
//draw_sprite_ext(s_txtbx_bd0, 0, x-x_threshold, y, 1, 1, 0, global.UI_general_primary, border_alpha-init_alpha);

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
	
	if (soon_availability) && (position_meeting(mouse_x, mouse_y, id) && (!position_meeting(mouse_x, mouse_y, oDW_tab0)) && !global.overlay)
	{
		//Cuadro
		draw_set_color(global.UI_general_secondary);
		draw_set_alpha(0.5);
		var width = (string_length(soon_text)*10) + 15;
		draw_roundrect_ext(mouse_x, mouse_y-10, mouse_x+width, mouse_y+20, 20, 20, false);
		//Texto
		draw_set_color(global.UI_element_focused);
		draw_set_font(f_input);
		draw_set_alpha(1);
		draw_text(mouse_x+(width/2), mouse_y+5, soon_text);
	}
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);