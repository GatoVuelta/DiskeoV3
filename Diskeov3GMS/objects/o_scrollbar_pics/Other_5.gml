/// @description Basically, destroy unused surface
if (surface_exists(global.scroll_surface))
{
	surface_free(global.scroll_surface)
}