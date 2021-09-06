//---Hand cursor---
nearest_card = instance_nearest(mouse_x-global.scroll_pres_surface_x, mouse_y-global.scroll_pres_surface_y, obj_card_presence)

if 
(
	//Window dragger
	(position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable)) or
	(position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable)) or
	//LMButtons
	((position_meeting(mouse_x, mouse_y, oButtonTXTST) && (oButtonTXTST.element_enable == true)) && room != oButtonTXTST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPICST) && (oButtonPICST.element_enable == true)) && room != oButtonPICST.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonBNTS) && (oButtonBNTS.element_enable == true)) && room != oButtonBNTS.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonProfiles) && (oButtonProfiles.element_enable == true)) && room != oButtonProfiles.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonProfiles) && (oButtonProfiles.element_enable == true)) && room != oButtonProfiles.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonPalette) && (oButtonPalette.element_enable == true)) && room != oButtonPalette.room_to_check) or
	((position_meeting(mouse_x, mouse_y, oButtonCog) && (oButtonCog.element_enable == true)) && room != oButtonCog.room_to_check) or
	(position_meeting(mouse_x, mouse_y, oButton_pres_savefile) && (oButton_pres_savefile.element_enable == true)) or
	(position_meeting(mouse_x, mouse_y, oButton_pres_refresh) && (oButton_pres_refresh.element_enable == true)) or
	//ActionButtons
	(position_meeting(mouse_x, mouse_y, oButtonUpdateDRP) && (oButtonUpdateDRP.element_enable == true)) or
	//Preview
	(position_meeting(mouse_x, mouse_y, c_preview_online)) or
	//Dropdowns
	(position_meeting(mouse_x, mouse_y, obj_dropdown) && !(obj_dropdown.open) && !global.overlay_init) or
	(position_meeting(mouse_x, mouse_y, obj_dropdown_item)) or
	//Cards
	(nearest_card != noone && ((nearest_card.hover_load) or (nearest_card.hover_share) or (nearest_card.hover_delete) or (nearest_card.hover_openf) or (nearest_card.hover_import)))
	//DWTabs
	//(position_meeting(mouse_x, mouse_y, oDW_tab0) && (oDW_tab0.element_enable) && (!oDW_tab0.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tab1))) or
	//(position_meeting(mouse_x, mouse_y, oDW_tab1) && (oDW_tab1.element_enable) && (!oDW_tab1.focus) && !(position_meeting(mouse_x, mouse_y, oDW_tab0)))
)
{
	window_set_cursor(cr_drag);
}  else
{
	//---Normal cursor---
	window_set_cursor(cr_arrow);
}
