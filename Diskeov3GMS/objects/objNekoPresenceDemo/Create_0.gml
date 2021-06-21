/// @description Initialize Discord.


ready = false;
if (!np_initdiscord(global.appIDto, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}

alarm[0] = 10;

event_perform_object(oButtonUpdateDRP, ev_left_press, 0);