//---Hand cursor---
if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable)) or
	
	//MSG_btns
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn0) && (o_msgbx_acbtn0.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_cross) && (o_msgbx_cross.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_msgbx_acbtn1) && (o_msgbx_acbtn1.element_enable == true))
)
{
	window_set_cursor(cr_drag);
} else
{
	window_set_cursor(cr_default);
}