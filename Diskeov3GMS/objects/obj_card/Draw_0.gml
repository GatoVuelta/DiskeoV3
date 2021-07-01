if (surface_exists(global.scroll_surface))
{
	
surface_set_target(global.scroll_surface)

if (empty_Asset)
{
	draw_self()	
} else if (asset_sprite_exists)
{
	draw_sprite_stretched_ext(asset_sprite_this, 0, x-42, y-42, 83, 83, c_white, image_alpha);
}

//Hover
if (position_meeting(mouse_x-global.scroll_surface_x, mouse_y-global.scroll_surface_y, id))
{
	image_alpha = 0.9;
} else
{
	image_alpha = 1;
}

//Selection
//if (selected)
//{
	draw_set_font(f_selection);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x, y, txt);
//}

surface_reset_target()
}
