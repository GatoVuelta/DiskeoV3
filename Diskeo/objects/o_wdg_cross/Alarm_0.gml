/// @description FPS limiter
if !(window_has_focus())
{
	game_set_speed(15, gamespeed_fps);
} else 
{
	game_set_speed(60, gamespeed_fps);
}
alarm[0] = room_speed*0.25;