if (element_enable)
{

//Focus border	
if (focus)
{
	//Background
	draw_sprite_ext(sprite_index, 0, x, y-x_threshold, 1, 1, 0, global.UI_LMbtn_unfocused_bg, 1-init_alpha);
	draw_sprite_ext(sprite_index, 0, x, y-x_threshold, 1, 1, 0, global.UI_LMbtn_focused_bg, border_alpha-init_alpha);	
} else
{
	//Background
	draw_sprite_ext(sprite_index, 0, x, y-x_threshold, 1, 1, 0, global.UI_LMbtn_unfocused_bg, 1-init_alpha);
	draw_sprite_ext(sprite_index, 0, x, y-x_threshold, 1, 1, 0, global.UI_LMbtn_focused_bg, border_alpha-init_alpha);
}

//Icon
draw_sprite_ext(s_LMC_i3, 0, x, y-x_threshold, 1, 1, 0, global.UI_element_focused, 1-init_alpha);

} else 
{
	//Background
	draw_sprite_ext(sprite_index, 0, x, y-x_threshold, 1, 1, 0, global.UI_element_disabled, 0.5-init_alpha)
	//Icon
	draw_sprite_ext(s_LMC_i3, 0, x, y-x_threshold, 1, 1, 0, global.UI_element_disabled, 1-init_alpha);
	
	if (soon_availability) && (position_meeting(mouse_x, mouse_y, id))
	{
		//Basic text stuff
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_set_color(global.UI_element_unfocused);
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