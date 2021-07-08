if (surface_exists(global.scroll_surface))
{
	
surface_set_target(global.scroll_surface)

if !(empty_Asset) && !(asset_sprite_exists)
{
	image_blend = -1;
	image_alpha = 1-global.fade_alpha;
	draw_sprite_stretched_ext(spr_pfpcload_tr, oButtonUpdateDRP.load_subimg, x-42, y-42, 83, 83, global.UI_general_primary, image_alpha);
} else if (empty_Asset)
{
	image_blend = global.UI_general_terciary;
	image_alpha = 0.8-global.fade_alpha;
	draw_self()	
} else if (asset_sprite_exists)
{
	draw_sprite_stretched_ext(asset_sprite_this, 0, x-42, y-42, 83, 83, c_white, image_alpha);
}

//Selection
if (selected)
{
	draw_sprite_ext(s_selected_b, 0, x, y, 1, 1, 0, global.UI_general_primary, image_alpha);
	draw_sprite_ext(s_selected_s, 0, x+30, y+30, 1, 1, 0, global.UI_element_focused, image_alpha);
}

//Hover
if (!empty_Asset)
{
if (position_meeting(mouse_x-global.scroll_surface_x, mouse_y-global.scroll_surface_y, id))
{
	image_alpha = 0.9-global.fade_alpha;
	{
		//Cuadro
		draw_set_color(global.UI_general_secondary);
		draw_set_alpha(0.6);
		
		var dx = global.scroll_surface_x;
		var dy = global.scroll_surface_y;
		
		var width = (string_length(txt)*9) + 15;
		draw_roundrect_ext((mouse_x)-dx, (mouse_y+10)-dy, (mouse_x+width)-dx, (mouse_y+40)-dy, 20, 20, false);
		//Texto
		draw_set_color(global.UI_element_focused);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(f_input);
		draw_set_alpha(1);
		draw_text((mouse_x+(width/2))-dx, (mouse_y+25)-dy, txt); 
	}
} else
{
	image_alpha = 1-global.fade_alpha;
}
}

//draw_set_color(global.UI_element_focused);
//draw_text(x, y, empty_Asset);
//draw_text(x, y+25, string("c: ")+string(columna));

surface_reset_target()
}
