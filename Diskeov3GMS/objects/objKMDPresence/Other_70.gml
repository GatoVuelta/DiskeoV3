/// @description Capture async events from KMDPresence
var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	window_set_caption("Diskeo - Status: Up");
	ready = true;
		show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("Alpha 2", "Diskeo", false);
	
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence(global.input_sline_text, global.input_fline_text, "dsk_dsklogo", "dsk_dsklogo");
	if (!global.hassprite)
	{
	// passing a URL will add this sprite asynchronously via *internets*
	user_avatar_url = np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]);
	sprite_add(user_avatar_url, 1, false, false, 0, 0);
	
	global.userid_nick = (async_load[? "username"]);
	global.userid_disc = (async_load[? "discriminator"]);
	show_debug_message(async_load[? "bot"]);
	}
}