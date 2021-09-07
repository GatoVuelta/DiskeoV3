if (window_command_check(window_command_close))
{
game_end();
}

//Close handler
if (mouse_check_button_pressed(mb_left) && element_enable)
{
	event_perform(ev_left_release, 0);
};