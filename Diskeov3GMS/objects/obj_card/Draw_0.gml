if (surface_exists(global.scroll_surface))
{
	
surface_set_target(global.scroll_surface)

draw_self()	
draw_set_color(c_white)

//Hover
if (position_meeting(mouse_x-global.scroll_surface_x, mouse_y-global.scroll_surface_y, id))
{
	image_alpha = 0.9;
} else
{
	image_alpha = 1;
}

//Selection
if (selected)
{
	draw_set_font(f_selection);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x, y, txt);
}

surface_reset_target()
}
