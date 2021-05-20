//Si clickeo o estaba clikeando ante
if ((mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id)) 
or (mouse_check_button(mb_left) && ever_clicked_clicking == true)) 
//And NOT hovering window commands
&& (!position_meeting(mouse_x, mouse_y, o_wdg_min) && !position_meeting(mouse_x, mouse_y, o_wdg_cross))
{

ever_clicked_clicking = true;

//Establecer posicion inicial
if (mouse_release_count == 0)
{
	x_mouse_from = mouse_x;
	y_mouse_from = mouse_y;
	mouse_release_count = 1;
	offset_x = display_mouse_get_x()-window_get_x();
    offset_y = display_mouse_get_y()-window_get_y();
}

window_set_position(display_mouse_get_x()-offset_x, display_mouse_get_y()-offset_y);

} else if !(mouse_check_button(mb_left))
{
	mouse_release_count = 0;
	ever_clicked_clicking = false;
}
