/// @description Initialize Discord.

#macro DISCORD_APP_ID "715161153319206912"

ready = false;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}

alarm[0] = 10;