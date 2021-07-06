if (position_meeting(mouse_x, mouse_y, id))
{
	hover = true;
	
	if (mouse_check_button_pressed(mb_left))
	{
		scr_check_heading();
		
		if (global.lastusedappID != global.appIDto)
		{
		if show_question("Changing your heading (Appliction name) will reset your image keys inside Diskeo as they are not available inside your other app's assets.\nDo you want to proceed?")
		{
			if(parent == noone){exit};
			scr_check_heading();
			parent.text = text;
			global.overlay = false;
			dropdown_close();
			
		} else
		{
			parent.text = text;
			scr_check_heading();
			global.overlay = false;
			dropdown_close();
		}
		} else {
			parent.text = text;
			scr_check_heading();
			global.overlay = false;
			dropdown_close();			
		}
		
	} else if (position_meeting(mouse_x, mouse_y, obj_dropdown_item))
	{
		//nothing
	}
} else if ((!(position_meeting(mouse_x, mouse_y, obj_dropdown_item)) && !(position_meeting(mouse_x, mouse_y, obj_dropdown))) && (mouse_check_button_pressed(mb_left)))
{
	show_debug_message("called close");
	global.overlay = false;
	dropdown_close();
}else
{
	hover = false;
}