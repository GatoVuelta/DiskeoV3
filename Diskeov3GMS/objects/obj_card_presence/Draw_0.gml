if (surface_exists(global.scroll_pres_surface))
{

//Define common coordinates
var mx_pos = mouse_x-global.scroll_pres_surface_x;
var my_pos = mouse_y-global.scroll_pres_surface_y;
var acbtn_load_x = x+380;
var acbtn_share_x = x+430;
var acbtn_delete_x = x+480;
	
surface_set_target(global.scroll_pres_surface)

if !(empty_Asset) && !(asset_sprite_exists)
{
	image_blend = -1;
	image_alpha = 1-global.fade_alpha;
	draw_sprite_stretched_ext(spr_pfpcload_tr, oButtonUpdateDRP.load_subimg, x-42, y-42, 300, 83, global.UI_general_primary, image_alpha);
} else if (empty_Asset)
{
	image_blend = global.UI_general_terciary;
	image_alpha = 0.7-global.fade_alpha;
	draw_self();
} else if (asset_sprite_exists)
{
	if (valid_Asset)
	{
		draw_set_color(global.UI_general_secondary);
	} else {
		draw_set_color(global.UI_general_terciary);
	}
	draw_set_alpha(image_alpha);
	draw_roundrect_ext(x-42, y-42, x+542, y+42, 30, 30, false);
}

//Basic drawing props
draw_set_alpha(1-global.fade_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//DrawOtherThings
if (!empty_Asset)
{
//TitleDesc
if (valid_Asset)
{
	draw_set_color(global.UI_element_focused);
} else {
	draw_set_color(global.UI_windragger_element_focus_indicator_alt);	
}
draw_set_font(f_UniSans_Pres_Title);
draw_text(x-15, y-10, pres_info_name);
if !(valid_Asset) {
	draw_set_color(global.UI_windragger_element_focus_indicator_alt_clear);	
}
draw_set_font(f_Whitney_Pres_Desc);
draw_text(x-15, y+10, pres_info_desc);

	
//ActionButtons
//-->Load
if (valid_Asset)
{
if (point_in_rectangle(mx_pos, my_pos, acbtn_load_x, y-18, acbtn_load_x+40, y+18))
{
	draw_set_color(global.UI_general_primary);
	if (mouse_check_button(mb_left))
	{
		show_message_async("Cliked load!");
	}
} else { draw_set_color(global.UI_LMbtn_unfocused_bg) };
draw_roundrect_ext(acbtn_load_x, y-20, acbtn_load_x+40, y+20, 25, 25, false);
draw_sprite_ext(s_icon_load, 0, acbtn_load_x+21, y, 1, 1, 0, global.UI_element_focused, 1-global.fade_alpha);
} else {
	//DisabledInvalid
	draw_set_color(global.UI_general_terciary);
	draw_set_alpha(0.8-global.fade_alpha);
	draw_roundrect_ext(acbtn_load_x, y-20, acbtn_load_x+40, y+20, 25, 25, false);
	draw_sprite_ext(s_icon_load, 0, acbtn_load_x+21, y, 1, 1, 0, global.UI_element_focused, 0.3-global.fade_alpha);
	draw_set_alpha(1-global.fade_alpha);
}
//-->Share
if (valid_Asset)
{
if (point_in_rectangle(mx_pos, my_pos, acbtn_share_x, y-18, acbtn_share_x+40, y+18))
{
	draw_set_color(global.UI_general_primary)
	if (mouse_check_button(mb_left))
	{
		show_message_async("Cliked share!");
	}
} else { draw_set_color(global.UI_LMbtn_unfocused_bg) };
draw_roundrect_ext(acbtn_share_x, y-20, acbtn_share_x+40, y+20, 25, 25, false);
draw_sprite_ext(s_icon_share, 0, acbtn_share_x+21, y, 1, 1, 0, global.UI_element_focused, 1-global.fade_alpha);
} else {
	//DisabledInvalid
	draw_set_color(global.UI_general_terciary)
	draw_set_alpha(0.8-global.fade_alpha);
	draw_roundrect_ext(acbtn_share_x, y-20, acbtn_share_x+40, y+20, 25, 25, false);
	draw_sprite_ext(s_icon_share, 0, acbtn_share_x+21, y, 1, 1, 0, global.UI_element_focused, 0.3-global.fade_alpha);
	draw_set_alpha(1-global.fade_alpha);
}
//-->Delete
if (point_in_rectangle(mx_pos, my_pos, acbtn_delete_x, y-18, acbtn_delete_x+40, y+18))
{
	draw_set_color(global.UI_windragger_element_focus_indicator_alt)
	if (mouse_check_button(mb_left))
	{
		show_message_async("Cliked delete!");
	}
} else { draw_set_color(global.UI_LMbtn_unfocused_bg) };
draw_roundrect_ext(acbtn_delete_x, y-20, acbtn_delete_x+40, y+20, 25, 25, false);
draw_sprite_ext(s_icon_delete, 0, acbtn_delete_x+21, y, 1, 1, 0, global.UI_element_focused, 1-global.fade_alpha);

//Hover
if (position_meeting(mx_pos, my_pos, id)) && !(selected)
{	if (valid_Asset)
	{	
		image_alpha = 1-global.fade_alpha;
	}
	{
		//Cuadro
		draw_set_color(global.UI_general_secondary);
		draw_set_alpha(0.6);
		//ResetDrawing
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);	
		
		var dx = global.scroll_pres_surface_x;
		var dy = global.scroll_pres_surface_y;
		
		var width = (string_length(txt)*9) + 15;
		draw_roundrect_ext((mouse_x)-dx, (mouse_y+10)-dy, (mouse_x+width)-dx, (mouse_y+40)-dy, 20, 20, false);
		//Texto
		draw_set_color(global.UI_element_focused);
		draw_set_font(f_input);
		draw_set_alpha(1);
		draw_text((mouse_x+(width/2))-dx, (mouse_y+25)-dy, txt); 
	}
} else
{
	if (valid_Asset)
	{
		image_alpha = 0.7-global.fade_alpha;
	} else {
		image_alpha = 0.8-global.fade_alpha;
	}
}
}

//draw_set_color(global.UI_element_focused);
//draw_text(x, y, empty_Asset);
//draw_text(x, y+25, string("c: ")+string(columna));

surface_reset_target()
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);