//np_update();
show_debug_message("Presence updated just now");

if !(global.hassprite)
{
	global.forceclick = true;
	alarm[0] = room_speed*2;
}