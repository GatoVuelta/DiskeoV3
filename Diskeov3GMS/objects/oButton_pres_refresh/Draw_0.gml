if (element_enable)
{

//Background
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_unfocused_bg, 1-init_alpha);
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_LMbtn_focused_bg, border_alpha-init_alpha);	
} else 
{
	//Background
	draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_element_disabled, 0.5-init_alpha)
}

if (draw_load)
{
	draw_sprite_ext(spr_pfpcload_tr, load_subimg, x+170, y, 1, 1, 0, global.UI_general_primary, 1);
}