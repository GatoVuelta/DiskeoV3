/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	window_set_caption("Diskeo - Status: Up");
	ready = true;
	show_debug_message("async social date (updrp): " + string(date_current_datetime()));
	
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
	np_setpresence(global.input_fline_text, global.input_sline_text, global.lpic_key, global.spic_key);
	
	if (!global.hassprite) && !(global.debugmode0)
	{	
	global.user_avatar_url = np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]);
	spr_id = sprite_add(global.user_avatar_url, 1, false, false, 0, 0);
	img_request = http_get(string("https://api.sightengine.com/1.0/check.json?url=")+string(global.user_avatar_url)+string("&models=properties&api_user=25594430&api_secret=DULGwRWykZQUPB2SRyWF"));
	}
}