if !(o_overlayctrl_0.overlay_alpha > 0)
{
	if(alarm[0] == -1)
	{
		alarm[0] = room_speed*2;
	}
	init_alpha -= 0.05;
	
} else {init_alpha = o_overlayctrl_0.overlay_alpha+0.5}

with(my_cross)
{
	image_alpha = other.init_alpha;
}