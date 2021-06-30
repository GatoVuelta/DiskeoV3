y = ystart + ((global.areaHeight/100 * obj_slider.percentage) - global.areaHeight);

if (position_meeting(mouse_x-global.scroll_surface_x, mouse_y-global.scroll_surface_y, id)) && (mouse_check_button_pressed(mb_left))
{
	if (selected)
	{
		selected = false;
		txt = choose(":)", ":D", ":O", "CatFlip\n#5812");
	} else
	{
		selected = true;
	}
	
}