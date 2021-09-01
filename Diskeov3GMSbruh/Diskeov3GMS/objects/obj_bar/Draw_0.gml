/// @description Draw surface & Self
if (surface_exists(global.scroll_surface))
{
	
draw_surface(global.scroll_surface, global.scroll_surface_x - x_threshold, global.scroll_surface_y);

surface_set_target(global.scroll_surface)
draw_clear_alpha(c_black, 0)
surface_reset_target();

} else 
{
	global.scroll_surface = surface_create(area_width, area_height);
}

//Self
image_alpha = 1-init_alpha;
with (obj_slider)
{
	image_alpha = 1-other.init_alpha;
}

draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_scrll_scrollbar_bg, image_alpha);

//ScrollAreaBorder
draw_sprite_ext(s_scrll_bd0, 0, global.scroll_surface_x-x_threshold, global.scroll_surface_y, 1, 1, 0, global.UI_general_primary, 1-global.fade_alpha);