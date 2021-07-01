/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	window_set_caption("Diskeo - Status: Up");
	ready = true;
	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("bruh", "lmao", false);
	
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence(global.input_fline_text, global.input_sline_text, "astraicon", "astraicon");
	
	if (!global.hassprite)
	{
	// passing a URL will add this sprite asynchronously via *internets*
	
	global.user_avatar_url = np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]);
	spr_id = sprite_add(global.user_avatar_url, 1, false, false, 0, 0);
	img_request = http_get(string("https://api.sightengine.com/1.0/check.json?url=")+string(global.user_avatar_url)+string("&models=properties&api_user=25594430&api_secret=DULGwRWykZQUPB2SRyWF"));
	}
}