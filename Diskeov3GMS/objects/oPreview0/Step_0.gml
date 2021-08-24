//ButtonCount
if (global.presence_button1_enable)
{
	if (global.presence_button2_enable)
	{
		button_count = 2;
		sprite_index = s_prvw_bg_2;
		y_threshold = -57;
		with(c_preview_online){y = init_y+other.y_threshold + 15};
		if !(instance_exists(oButton_PRVW_1)){var btn1 = instance_create_layer(989, 469, "LyPreviewBG_up", oButton_PRVW_1)};
		if !(instance_exists(oButton_PRVW_2)){var btn2 = instance_create_layer(989, 509, "LyPreviewBG_up", oButton_PRVW_2)};
	} else {
		button_count = 1;
		sprite_index = s_prvw_bg_1
		y_threshold = -27;
		with(c_preview_online){y = init_y+other.y_threshold + 4};
		if !(instance_exists(oButton_PRVW_1)){var btn1 = instance_create_layer(989, 469, "LyPreviewBG_up", oButton_PRVW_1)};
	}
} else if (global.presence_button2_enable)
	{
		button_count = 1;
		sprite_index = s_prvw_bg_1;
		y_threshold = -27;
		with(c_preview_online){y = init_y+other.y_threshold + 4};
		if !(instance_exists(oButton_PRVW_2)){var btn2 = instance_create_layer(989, 469, "LyPreviewBG_up", oButton_PRVW_2)};
	} else
{
	button_count = 0;
	sprite_index = s_prvw_bg_0;
	y_threshold = 0;
	with(c_preview_online){y = init_y};
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

if (!iread)
{
	
s_url=(
		string("https://cdn.discordapp.com/app-assets/") +
		string(global.appIDto) +
		string("/") +
		string(global.spic_id) +
		string(".png")
	);
	
l_url=(
		string("https://cdn.discordapp.com/app-assets/") +
		string(global.appIDto) +
		string("/") +
		string(global.lpic_id) +
		string(".png")
	);
	
spic_request = sprite_add(s_url, 1, false, false, 0, 0); 
lpic_request = sprite_add(l_url, 1, false, false, 0, 0);

iread =true;

}