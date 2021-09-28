//Minimize handler
if (mouse_check_button_pressed(mb_left) && element_enable)
{
	event_perform(ev_left_release, 0);
};

//Restore handler
if (window_command_check(window_command_restore)) 
{
  if (window_get_height() == 0) 
	{
      // Restoring from minimized state
      window_command_run(window_command_restore);
    }
}