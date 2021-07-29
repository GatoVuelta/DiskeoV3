//Slow border fading
if (focus)
{
	if (border_alpha <= 0.9)
	{
		border_alpha += 0.1;	
	}
} else if (border_alpha >= 0.1)
	{
		border_alpha -= 0.1;
	}

//Fade in effect
if (fade_in)
{
	if (x_threshold >= fin_speed)
	{
	x_threshold -= fin_speed;
	init_alpha = ((x_threshold/init_x_threshold));
	} else fade_in = fin_speed;
}
//Fade out effect
if (fade_out)
{
	if (init_x_threshold <= -fout_speed)
	{
	init_x_threshold += fout_speed;
	x_threshold -= fout_speed;
	init_alpha = 1-(init_x_threshold/(x_threshold+init_x_threshold));
	} else fade_out = false;
}

//Click action
if ((element_enable) &&
(mouse_check_button_pressed(mb_left)) &&
(position_meeting(mouse_x, mouse_y, id)) &&
!(position_meeting(mouse_x, mouse_y, oDW_tabbtn_0)))
{
focus = true;
oDW_tabbtn_0.focus = false;

var objid = oDW_tabbtn_0;

var dw_layer = layer_get_id("LY_dw_tabs_down");
var up_layer = layer_get_id("LY_dw_tabs_up");

objid.layer = dw_layer;
id.layer = up_layer;

//SetGlobalBTNSelect
global.presence_button_selected = 2;
with (oInputBTN_txt)
{
	if !(string_length(global.presence_button2_text) < 1)
	{
		tte_ext_input_set_text(global.presence_button2_text)
	} else {
		tte_ext_input_set_text(" ");
	}
}
with (oInputBTN_link)
{
	if !(string_length(global.presence_button2_link) < 1)
	{
		tte_ext_input_set_text(global.presence_button2_link)
	} else {
		tte_ext_input_set_text(" ");
	}
}

with (oToggle_BTN)
{
	toggle_st = global.presence_button2_enable;
}

}