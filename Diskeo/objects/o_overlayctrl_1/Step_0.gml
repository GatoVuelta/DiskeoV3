//Overlay alpha
if (global.overlay_init) && (overlay_alpha <= (overlay_max-overlay_speed))
{
	overlay_alpha += overlay_speed;
}else if  (!global.overlay_init) && (overlay_alpha >= overlay_speed)
{
	overlay_alpha -= overlay_speed;
}