//---Hand cursor---
if 
(
  //Minimize
  position_meeting(mouse_x, mouse_y, o_wdg_min) && (o_wdg_min.element_enable = true) or
  position_meeting(mouse_x, mouse_y, o_wdg_cross) && (o_wdg_cross.element_enable = true)  
)
{window_set_cursor(cr_drag)}else{window_set_cursor(cr_arrow)}