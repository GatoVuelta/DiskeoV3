spr_id = -1;
//Focus indicator
if ((position_meeting(mouse_x, mouse_y, id) or global.forceclick))
{
	if (!global.forceclick)
	{
		focus = true;
	}
	
if (mouse_check_button_pressed(mb_left) or global.forceclick) && !(global.experiment_nodejs)
{

if !(global.lastusedappID == global.appIDto)
{
	//show_message_async("You recently selected a new Heading or profile AppID.\nDiscord can take 3-5 seconds to finish the old presence and start the new one");
	np_clearpresence();
	__np_shutdown();
	np_initdiscord(global.appIDto, true, np_steam_app_id_empty);
	draw_load = true;
	alarm[0] = room_speed*1.5;
}

if (!global.debugmode0)
{
	show_debug_message("Attempting to connect...");
} else {
	show_debug_message("Attempting to connect... (DEBUG MODE ENABLED!)");
}
	
	//Timestamp
	if (global.show_timestamp)
	{
		if (global.start_timestamp_type == "current")
		{
			np_setpresence_timestamps(date_current_datetime(), global.end_timestamp, false);
		} else {
			np_setpresence_timestamps(global.start_timestamp, global.end_timestamp, true);
		}
	}
	//PicTooltips
	np_setpresence_more(global.s_tooltip, global.l_tooltip, false);
	
	//TextLines
	np_setpresence(global.input_sline_text, global.input_fline_text, global.lpic_key, global.spic_key);
	
	//Buttons
	if (global.presence_button1_enable)
	{
		np_setpresence_buttons(0, global.presence_button1_text, global.presence_button1_link);
	} else {
		np_setpresence_buttons(0, "", "");
	}
	if (global.presence_button2_enable)
	{
		np_setpresence_buttons(1, global.presence_button2_text, global.presence_button2_link);
	} else {
		np_setpresence_buttons(1, "", "");
	}
	
	global.lastusedappID = global.appIDto;
	global.lastused_clientsecret = global.clientsecret_to;
	

	//UpdateonNP
	np_update();

	
	if !(draw_load) && !(global.forceclick)
	{
		instance_create_layer(mouse_x, mouse_y, "DoneMarks0", oDoneMark0)
	}
	
	global.forceclick = false;
	oPreview0.iread = false;
}
} else 
{
	focus = false;
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