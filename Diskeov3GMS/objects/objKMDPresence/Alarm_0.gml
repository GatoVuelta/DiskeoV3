//np_update();
show_debug_message("Persistent updater started (objKMDPresence)");

if !(global.hassprite) && !(global.debugmode0)
{
	global.forceclick = true;
	alarm[0] = room_speed*2;
} else if (global.debugmode0)
{
	show_debug_message("Persistent updater stopped due to debugmode enabled (objKMDPresence)");
}