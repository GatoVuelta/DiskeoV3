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
if (load_subimg < (total_subimgs-1)) && !(global.hassprite)
{
	load_subimg += 1;
} else {load_subimg = 0}

//Excess controller
shrinked_fline = global.input_fline_text;
if (string_length(shrinked_fline) > 27)
{
	shrinked_fline = string_copy(shrinked_fline, 1, 27);
	shrinked_fline = string(shrinked_fline) + string("...");
}
shrinked_sline = global.input_sline_text;
if (string_length(shrinked_sline) > 27)
{
	shrinked_sline = string_copy(shrinked_sline, 1, 27);
	shrinked_sline = string(shrinked_sline) + string("...");
}
shrinked_heading = global.heading_dw_text;
if (string_length(shrinked_heading) > 25)
{
	shrinked_heading = string_copy(shrinked_heading, 1, 25);
	shrinked_heading = string(shrinked_heading) + string("...");
}

