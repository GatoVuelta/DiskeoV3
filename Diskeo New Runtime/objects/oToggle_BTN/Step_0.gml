spr_id = -1;
//Focus indicator
if (position_meeting(mouse_x, mouse_y, id))
{
	focus = true;
	if (mouse_check_button_pressed(mb_left))
	{
		toggle_st = !toggle_st;
		
		if (toggle_st)
		{
			if (global.presence_button_selected == 1){global.presence_button1_enable = true} else 
			if (global.presence_button_selected == 2){global.presence_button2_enable = true}
		} else {
			if (global.presence_button_selected == 1){global.presence_button1_enable = false} else 
			if (global.presence_button_selected == 2){global.presence_button2_enable = false}
		}
	}
} else 
	{
		focus = false;
	}

//Toggle
if (toggle_st)
{
	if (toggle_threshold < toggle_active_threshold)
	{
		toggle_threshold += 3;
	}
} else {
	if (toggle_threshold > toggle_inactive_threshold)
	{
		toggle_threshold -= 3;
	}	
}

//Slow border fading
if (focus)
{
	if (border_alpha <= 0.9)
	{
		border_alpha += 0.1;	
	}
} else if (border_alpha >= 0.1)
	{
		border_alpha -= 0.1;
	}

//Fade in effect
if (fade_in)
{
	if (x_threshold >= fin_speed)
	{
	x_threshold -= fin_speed;
	init_alpha = ((x_threshold/init_x_threshold));
	} else fade_in = fin_speed;
}
//Fade out effect
if (fade_out)
{
	if (init_x_threshold <= -fout_speed)
	{
	init_x_threshold += fout_speed;
	x_threshold -= fout_speed;
	init_alpha = 1-(init_x_threshold/(x_threshold+init_x_threshold));
	} else fade_out = false;
}


//If overlay
if ((global.overlay) && (element_enable))
{
	element_enable = false;
} else if (!global.overlay) && (element_default_enable)
{
	element_enable = true;
}

//Loading animation
if (load_subimg < (total_subimgs-1)) /*&& (draw_load)*/
{
	load_subimg += 1;
} else {load_subimg = 0}