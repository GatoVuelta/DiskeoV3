if (element_enable) && (!global.interruption0)
{
	script_execute(tte_ext_input_step,0,0,0,0,0);
}

//Fade out commander
if (keyboard_check_pressed(vk_escape))
{
fade_out = true
init_x_threshold = -500
}

//Slow border fading
if (focus)
{
	if (border_alpha <= 0.95)
	{
		border_alpha += 0.05;	
	}
} else if (border_alpha >= 0.05)
	{
		border_alpha -= 0.05;
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

