/// @description DRaw surface
if (surface_exists(global.scroll_surface))
{
	
draw_surface(global.scroll_surface, global.scroll_surface_x, global.scroll_surface_y);

surface_set_target(global.scroll_surface)
draw_clear_alpha(c_black, 0.2)
surface_reset_target();

} else 
{
	global.scroll_surface = surface_create(area_width, area_height);
}

//Self
draw_self();