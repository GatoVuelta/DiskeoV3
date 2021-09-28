if (element_enable)
{
//Background
draw_set_alpha(1);
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_unfocused_bg, 1-global.fade_alpha);
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_focused_bg, border_alpha-global.fade_alpha);	

//TabText
//draw_set_halign(fa_center);
//draw_set_valign(fa_center);
//draw_set_color(global.UI_element_focused);
//draw_set_font(f_Whitney_Bold_BTN)
//draw_text(x-x_threshold, y, global.presence_button2_text)

//Tooltip
scr_tooltip_up(x, y+50, 35, "Save presence", border_alpha-global.fade_alpha);

//Icon
draw_sprite_ext(s_savebtn_icon, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_focused, 1-global.fade_alpha);	

}

if (draw_load)
{
	draw_sprite_ext(spr_pfpcload_tr, load_subimg, x+170, y, 1, 1, 0, global.UI_general_primary, 1);
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);