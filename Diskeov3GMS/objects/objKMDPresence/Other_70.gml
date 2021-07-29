/// @description Capture async events from KMDPresence
var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	window_set_caption("Diskeo - Status: Up");
	ready = true;
	show_debug_message("async social date (kmd): " + string(date_current_datetime()));
	
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
	
	np_setpresence_more(global.s_tooltip, global.l_tooltip, false);
		
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence(global.input_sline_text, global.input_fline_text, "dsk_dsklogo", "dsk_dsklogo");
	if (!global.hassprite) && !(global.debugmode0)
	{
	// passing a URL will add this sprite asynchronously via *internets*
	user_avatar_url = np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]);
	spr_id = sprite_add(user_avatar_url, 1, false, false, 0, 0);
	
	global.userid = (async_load[? "user_id"]);
	global.userid_nick = (async_load[? "username"]);
	global.userid_disc = (async_load[? "discriminator"]);
	
	show_debug_message(global.userid);
	}
}