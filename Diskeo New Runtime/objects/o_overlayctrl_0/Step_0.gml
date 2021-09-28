//Overlay alpha
if (global.overlay) && (overlay_alpha <= (overlay_max-overlay_speed))
{
	overlay_alpha += overlay_speed;
}else if  (!global.overlay) && (overlay_alpha >= overlay_speed)
{
	overlay_alpha -= overlay_speed;
}