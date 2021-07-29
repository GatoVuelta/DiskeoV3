//---Hand cursor---
if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable)) or
	//Text boxes
	(position_meeting(mouse_x, mouse_y, oInputBTN_txt) && (oInputBTN_txt.focus == false) && (oInputBTN_txt.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, oInputBTN_link) && (oInputBTN_link.focus == false) && (oInputBTN_link.element_enable == true)) or
	//LMButtons
	((position_meeting(mouse_x, mouse_y, oButtonTXTST) && (oButtonTXTST.element_enable == true)) && room != oButtonTXTST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPICST) && (oButtonPICST.element_enable == true)) && room != oButtonPICST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonBNTS) && (oButtonBNTS.element_enable == true)) && room != oButtonBNTS.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonProfiles) && (oButtonProfiles.element_enable == true)) && room != oButtonProfiles.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonProfiles) && (oButtonProfiles.element_enable == true)) && room != oButtonProfiles.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPalette) && (oButtonPalette.element_enable == true)) && room != oButtonPalette.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonCog) && (oButtonCog.element_enable == true)) && room != oButtonCog.room_to_check) or
	//ActionButtons
	(position_meeting(mouse_x, mouse_y, oButtonUpdateDRP) && (oButtonUpdateDRP.element_enable == true)) or
	//Preview
	(position_meeting(mouse_x, mouse_y, c_preview_online)) or
	//DWTabs
	(position_meeting(mouse_x, mouse_y, oDW_tabbtn_0) && (oDW_tabbtn_0.element_enable) && (!oDW_tabbtn_0.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tabbtn_1))) or
	(position_meeting(mouse_x, mouse_y, oDW_tabbtn_1) && (oDW_tabbtn_1.element_enable) && (!oDW_tabbtn_1.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tabbtn_0))) or
	//Toggler
	(position_meeting(mouse_x, mouse_y, oToggle_BTN) && (oToggle_BTN.element_enable))
)
{
	window_set_cursor(cr_drag);
} else if 
(
	//---Hand beam---
	(position_meeting(mouse_x, mouse_y, oInputBTN_txt) && (oInputBTN_txt.focus == true) && (oInputBTN_txt.element_enable = true)) or
	(position_meeting(mouse_x, mouse_y, oInputBTN_link) && (oInputBTN_link.focus == true) && (oInputBTN_link.element_enable = true))
)
{
	window_set_cursor(cr_beam);
} else
{
	//---Normal cursor---
	window_set_cursor(cr_arrow);
}
