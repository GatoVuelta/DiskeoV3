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
//Overlay test
if (keyboard_check_pressed(vk_enter))
{
global.overlay = true;
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

//Output text
show_debug_message(tte_ext_input_get_text());

//If overlay
if (global.overlay)
{
	element_enable = false;
} else {element_enable = true}