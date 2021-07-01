/// @description DRaw surface
if (surface_exists(global.scroll_surface))
{
	
draw_surface(global.scroll_surface, global.scroll_surface_x, global.scroll_surface_y);

surface_set_target(global.scroll_surface)
draw_clear_alpha(c_black, 0)
surface_reset_target();

} else 
{
	global.scroll_surface = surface_create(area_width, area_height);
}

//Self
draw_self();

//ScrollAreaBorder
draw_sprite_ext(s_scrll_bd0, 0, global.scroll_surface_x, global.scroll_surface_y, 1, 1, 0, global.UI_general_primary, 1-global.fade_alpha);