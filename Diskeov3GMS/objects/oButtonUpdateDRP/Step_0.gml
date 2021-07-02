spr_id = -1;
//Focus indicator
if ((position_meeting(mouse_x, mouse_y, id) or global.forceclick))
{
	if (!global.forceclick)
	{
		focus = true;
	}
	
if (mouse_check_button_pressed(mb_left) or global.forceclick)
{
	
if !(global.lastusedappID == global.appIDto)
{
	//show_message_async("You recently selected a new Heading or profile AppID.\nDiscord can take 3-5 seconds to finish the old presence and start the new one");
	__np_shutdown();
	np_initdiscord(global.appIDto, true, np_steam_app_id_empty);
	draw_load = true;
	alarm[0] = room_speed*1.5;
}

	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("Alpha 4", "Diskeo", false);
	
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence(global.input_sline_text, global.input_fline_text, global.lpic_key, global.spic_key);
	
	global.lastusedappID = global.appIDto;
	
	np_update();
	
	if !(draw_load) && !(global.forceclick)
	{
		instance_create_layer(mouse_x, mouse_y, "DoneMarks0", oDoneMark0)
	}
	
	global.forceclick = false;
	
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