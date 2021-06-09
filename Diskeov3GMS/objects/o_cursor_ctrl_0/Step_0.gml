//---Hand cursor---
if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable == true)) or
	//Text boxes
	(position_meeting(mouse_x, mouse_y, oInputFirstLine) && (oInputFirstLine.focus == false) && (oInputFirstLine.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, oInputSecondLine) && (oInputSecondLine.focus == false) && (oInputSecondLine.element_enable == true)) or
	//LMButtons
	(position_meeting(mouse_x, mouse_y, oButtonTXTST) && (oButtonTXTST.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, oButtonPICST) && (oButtonPICST.element_enable == true)) or
	//ActionButtons
	(position_meeting(mouse_x, mouse_y, oButtonUpdateDRP) && (oButtonUpdateDRP.element_enable == true))
)
{
	window_set_cursor(cr_drag);
} else if 
(
	//---Hand beam---
	(position_meeting(mouse_x, mouse_y, oInputFirstLine) && (oInputFirstLine.focus == true) && (oInputFirstLine.element_enable = true)) or
	(position_meeting(mouse_x, mouse_y, oInputSecondLine) && (oInputSecondLine.focus == true) && (oInputSecondLine.element_enable = true))
)
{
	window_set_cursor(cr_beam);
} else
{
	//---Normal cursor---
	window_set_cursor(cr_arrow);
}
