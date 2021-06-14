show_debug_message("called click event");
if (!ever_clicked_clicking)
{
//scr_update_drp(global.input_sline_text, global.input_fline_text, "a", "logo_0_white");
//objNekoPresenceDemo.alarm[0]=10;

if !(global.lastusedappID == global.appIDto)
{
	show_message_async("You recently selected a new Heading or profile AppID.\nDiscord can take 3-5 seconds to finish the old presence and start the new one");
	__np_shutdown();
	np_initdiscord(global.appIDto, true, np_steam_app_id_empty);
}

	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("Alpha 1", "Diskeo", false);
	
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence(global.input_sline_text, global.input_fline_text, "dsk_dsklogo", "dsk_dsklogo");
	
	global.lastusedappID = global.appIDto;
	
	np_update();
}

instance_create_layer(mouse_x, mouse_y, "DoneMarks0", oDoneMark0)