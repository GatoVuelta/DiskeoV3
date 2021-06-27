//---Hand cursor---
if (instance_exists(o_MSG_Box_update_m) or instance_exists(o_MSG_Box_update_o))
{
	if 
	(
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn0) && (o_msgbx_acbtn0.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn1) && (o_msgbx_acbtn1.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_cross) && (o_msgbx_cross.element_enable == true))
	)
	{
		a_window_set_cursor = cr_drag
	}
} else if (instance_exists(o_MSG_Box_badsrv_n))
{
	if 
	(
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn2) && (o_msgbx_acbtn2.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn3) && (o_msgbx_acbtn3.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_cross_badsv) && (o_msgbx_cross_badsv.element_enable == true))
	)
	{
		a_window_set_cursor = cr_drag
	}
} else if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable))
)
{
	a_window_set_cursor = cr_drag;
} else
{
	a_window_set_cursor = cr_default;
}

//Aplicar
window_set_cursor(a_window_set_cursor);