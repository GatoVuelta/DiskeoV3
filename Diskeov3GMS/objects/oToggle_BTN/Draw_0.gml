if (element_enable)
{

//Focus border
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_txtbx_bg_focused, 1-init_alpha);

if (focus)
{
	//Background
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_PRVW_btn_active, border_alpha-init_alpha);	
} else
{
	//Background
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_PRVW_btn_active, border_alpha-init_alpha);
}

//ToggleBG
if (toggle_st)
{
	draw_sprite_ext(s_toggle_bg, 0, (x+43)-x_threshold, y, 1, 1, 0, global.UI_general_primary, 1-init_alpha);
} else 
{
	draw_sprite_ext(s_toggle_bg, 0, (x+43)-x_threshold, y, 1, 1, 0, global.UI_general_terciary, 1-init_alpha);
}

//ToggleBTN
draw_sprite_ext(s_toggle_btn, 0, (x+toggle_threshold)-x_threshold, y, 1, 1, 0, global.UI_element_focused, 1-init_alpha);

//TabText
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_UniSans_PrevAppTitle);
draw_set_alpha(1-init_alpha);
draw_text((x-string_width(tab_text))-x_threshold, y, tab_text)

} else 
{
	//Background
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_disabled, 0.5-init_alpha)
	//Icon
	//draw_sprite_ext(s_LMC0_pic, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_disabled, 1-init_alpha);
	
	//TabText
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_color(global.UI_element_unfocused);
	draw_set_font(f_UniSans_PrevAppTitle);
	draw_set_alpha(1-init_alpha);
	draw_text((x-string_width(tab_text))-x_threshold, y, tab_text)
	
	if (soon_availability) && (position_meeting(mouse_x, mouse_y, id) && (!global.overlay))
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

if (draw_load)
{
	draw_sprite_ext(spr_pfpcload_tr, load_subimg, x+170, y, 1, 1, 0, global.UI_general_primary, 1);
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);