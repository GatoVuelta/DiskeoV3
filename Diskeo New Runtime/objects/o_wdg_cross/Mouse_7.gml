if (element_enable)
{
	
#region WEBHOOK

webhook2 = discord_webhook("863476489315287051", "PC60JOFzNf5KWxD3he1xSY1epjmdZZrP6Z0hhOvlxLtdKTdkb8R_KIbxPMrM4h4DKpKM")

var session_finishedat = round(current_time/1000);
var session_finishedat = string(session_finishedat)+string(" seconds");
var ac_room = room_get_name(room);

discord_webhook_edit(webhook2, edit_content, "Session finished!")
discord_webhook_edit(webhook2, edit_username, string("Diskeo -> ")+string(ac_room));
discord_webhook_edit(webhook2, edit_embed_use, true)
discord_webhook_edit(webhook2, edit_embed_title, " ");

if (global.hassprite)
{
	discord_webhook_edit(webhook2, edit_embed_description,
	string("**AppVer:** `") + string(global.app_ver) + string("`\n") +
	string("**User:** `") + string(global.userid_nick) + string("#") + string(global.userid_disc) + string("`\n") +
	string("**Session Duration:** `") + string(session_finishedat) + string("`\n") +
	string("**Fingerprint:** `") + string(global.unique_md5_id) + string("`")
	)
} else {
	discord_webhook_edit(webhook2, edit_embed_description,
	string("**AppVer:** `") + string(global.app_ver) + string("`\n") +
	string("**User:** Not Loaded! :warning:") + string("\n") +
	string("**Session Duration:** `") + string(session_finishedat) + string("`\n") +
	string("**Fingerprint:** `") + string(global.unique_md5_id) + string("`")
	)
}

discord_webhook_edit(webhook2, edit_embed_color, "15881300");
discord_webhook_edit(webhook2, edit_embed_thumbnail_url, "https://i.ibb.co/DL41VwL/down.png");

discord_webhook_execute(webhook2)

#endregion

	
	np_clearpresence();
	__np_shutdown();
	
	if (global.experiment_nodejs)
	{
		with(oButtonUpdateDRP)
		{
			if (procid_actual != -1)
			{
				ProcIdKill(procid_actual)
			}
		}
	}
	
	game_end();
}