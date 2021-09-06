function scr_activeroom_indicator(){
	
	//Define
	draw_set_color(global.UI_element_focused);
	
	//Draw
	if (room == room_to_check) 
	{
		//Check is active
		draw_set_alpha(1-init_alpha);
		draw_roundrect_ext(x-70, (y-x_threshold)-22, x-55, (y-x_threshold)+22, 10, 10, false);
	} else {
		//Check is hovered
		draw_set_alpha(border_alpha-global.fade_alpha);
		draw_roundrect_ext(x-70, (y-x_threshold)-7, x-55, (y-x_threshold)+7, 10, 10, false);
	}

}