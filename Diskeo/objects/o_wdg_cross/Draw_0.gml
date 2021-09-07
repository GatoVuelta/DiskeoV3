///@description Hover and click
if (element_enable)
{
if (position_meeting(mouse_x, mouse_y, id))
{
	//Hover effect
	draw_sprite_ext(s_wdg_indicator_alt, 0, x, y, 1, 1, 0, global.UI_windragger_element_focus_indicator_alt, 1);
	//A sí mismo
	image_blend = global.UI_element_focused;
	draw_self();
	
} else
{
//A sí mismo
image_blend = global.UI_element_unfocused;
draw_self();
}
} else
{
//No activado
image_blend = global.UI_element_disabled;
draw_self();
}