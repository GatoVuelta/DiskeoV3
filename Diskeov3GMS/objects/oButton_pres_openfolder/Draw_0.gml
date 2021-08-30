if (surface_exists(global.scroll_pres_surface))
{

surface_set_target(global.scroll_pres_surface);
	
if (element_enable)
{
//Background
draw_set_alpha(1);
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_unfocused_bg, 1);
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_focused_bg, (border_alpha-init_alpha)+0.5);	

//TabText
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_Whitney_Bold_BTN)
draw_text(x-x_threshold, y, global.presence_button2_text)

}

if (draw_load)
{
	draw_sprite_ext(spr_pfpcload_tr, load_subimg, x+170, y, 1, 1, 0, global.UI_general_primary, 1);
}
}

//Reset
draw_set_halign(-1);
draw_set_valign(-1);
surface_reset_target();