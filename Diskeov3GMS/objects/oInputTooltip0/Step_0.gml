if (element_enable) && (!global.overlay)
{
	script_execute(tte_ext_input_step,0,0,0,0,0);
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
if (global.asset_select_l)
{
	global.l_tooltip = tte_ext_input_get_text();
	var txt2check = global.l_tooltip;
} else {
	global.s_tooltip = tte_ext_input_get_text();
	var txt2check = global.l_tooltip;
}

//If overlay
if ((global.overlay) && (element_enable))
{
	element_enable = false;
} else if (!global.overlay) && (element_default_enable)
{
	element_enable = true;
}

//Maxium and minium handler
if (focus) && (string_length(txt2check) > maxium_length)
{
	tte_ext_input_set_text(string_copy(txt2check, 1, maxium_length));
}

//TooltipStep
if (global.asset_select_l)
{
	var txt2 = "(Large)";
} else {
	var txt2 = "(Small)";
}
tab_text = string("Tooltip ")+string(txt2);
