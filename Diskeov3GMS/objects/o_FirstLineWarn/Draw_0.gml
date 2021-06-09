//Define blending
image_blend = global.UI_windragger_element_focus_indicator_alt;

//Show if activated
image_alpha = 1 - global.fade_alpha;


if (show_warning) 
{
	
draw_self();	
//Icono
draw_sprite_ext(s_txtbx_warn_sy, 0, x, y, 1, 1, 0, global.UI_element_focused, 1-global.fade_alpha);

if (position_meeting(mouse_x, mouse_y, id))
	{
		//Cuadro
		draw_set_color(global.UI_general_secondary);
		draw_set_alpha(0.5-global.fade_alpha);
		var width = (string_length(tab_text)*1.5) + 15;
		draw_roundrect_ext(mouse_x-width, mouse_y, mouse_x+width, mouse_y+55, 20, 20, false);
		//Texto
		draw_set_halign(fa_center);
		draw_set_color(global.UI_element_focused);
		draw_set_font(f_warn);
		draw_set_alpha(1-global.fade_alpha);
		draw_text(mouse_x, mouse_y+10, tab_text);
	}
} else {image_alpha = 0}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);