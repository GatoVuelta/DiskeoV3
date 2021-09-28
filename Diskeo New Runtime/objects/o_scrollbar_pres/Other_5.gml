/// @description Basically, destroy unused surface
if (surface_exists(global.scroll_pres_surface))
{
	surface_free(global.scroll_pres_surface)
}