if (position_meeting(mouse_x, mouse_y, id))
{
	image_alpha = 0.7
	
	if (mouse_check_button_pressed(mb_left))
	{
		if(parent == noone){exit};
		parent.text = text;
		global.overlay = false;
		dropdown_close();
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
	image_alpha = 1;
}