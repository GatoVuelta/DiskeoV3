//---Hand cursor---
if 
(
  //Window dragger
  (position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable == true)) or
  (position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable == true)) or
  //Text boxes
  (position_meeting(mouse_x, mouse_y, oInput) && (oInput.focus == false) && (oInput.element_enable = true))
)
{
	window_set_cursor(cr_drag);
} else
{
	//Normal cursor
	window_set_cursor(cr_arrow);
}
