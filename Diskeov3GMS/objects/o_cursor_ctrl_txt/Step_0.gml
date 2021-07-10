//---Hand cursor---
if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable)) or
	//Text boxes
	(position_meeting(mouse_x, mouse_y, oInputFirstLine) && (oInputFirstLine.focus == false) && (oInputFirstLine.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, oInputSecondLine) && (oInputSecondLine.focus == false) && (oInputSecondLine.element_enable == true)) or
	//LMButtons
	((position_meeting(mouse_x, mouse_y, oButtonTXTST) && (oButtonTXTST.element_enable == true)) && room != oButtonTXTST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPICST) && (oButtonPICST.element_enable == true)) && room != oButtonPICST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonBNTS) && (oButtonBNTS.element_enable == true)) && room != oButtonBNTS.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonProfiles) && (oButtonProfiles.element_enable == true)) && room != oButtonProfiles.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPalette) && (oButtonPalette.element_enable == true)) && room != oButtonPalette.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonCog) && (oButtonCog.element_enable == true)) && room != oButtonCog.room_to_check) or
	//ActionButtons
	(position_meeting(mouse_x, mouse_y, oButtonUpdateDRP) && (oButtonUpdateDRP.element_enable == true)) or
	//Preview
	(position_meeting(mouse_x, mouse_y, c_preview_online)) or
	//Dropdowns
	(position_meeting(mouse_x, mouse_y, obj_dropdown) && !(obj_dropdown.open)) or
	(position_meeting(mouse_x, mouse_y, obj_dropdown_item)) or
	//DWTabs
	(position_meeting(mouse_x, mouse_y, oDW_tab0) && (oDW_tab0.element_enable) && (!oDW_tab0.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tab1))) or
	(position_meeting(mouse_x, mouse_y, oDW_tab1) && (oDW_tab1.element_enable) && (!oDW_tab1.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tab0)))
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
