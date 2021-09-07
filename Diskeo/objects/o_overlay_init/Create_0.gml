if (global.default_overlay_init)
{
	global.overlay_init = true;
	global.overlay = true;
}
if !(global.debugmode0)
{
	alarm[0] = room_speed*3;
} else {
	alarm[0] = room_speed*0.1;
}
